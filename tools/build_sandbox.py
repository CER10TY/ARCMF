import os
import re
import subprocess
import shutil, errno
from shutil import copyfile

def copy_folder(src, dst):
	try:
		shutil.copytree(src, dst)
	except OSError as exc:
		if exc.errno == errno.ENOTDIR:
			shutil.copy(src, dst)
		else: raise

build_dir = "../build"
sandbox_dir = "../build/ARCMF_Sandbox.VR"
orig_sqm = "../build/ARCMF_Sandbox.VR/mission.sqm"
new_sqm = "../build/ARCMF_Sandbox.VR/new_mission.sqm"
orig_ext = "../build/ARCMF_Sandbox.VR/description.ext"
new_ext = "../build/ARCMF_Sandbox.VR/new_description.ext"		
with open('../ARCMF.VR/.version') as v: version = v.read()

if os.path.isdir(sandbox_dir):
	shutil.rmtree(sandbox_dir)
	
copy_folder("../ARCMF.VR", sandbox_dir)

copyfile(orig_ext, new_ext)
with open(new_ext) as infile, open(orig_ext, 'w') as outfile:
	for line in infile:
		if re.match(r'^\tsandbox\s=\s0;', line, re.I):
			outfile.write(re.sub(r'^\tsandbox\s=\s0;', '\tsandbox = 1;', line))
		else:
			if re.match(r'^onLoadName\s=\s"ARCMF";', line, re.I):
				outfile.write(re.sub(r'^onLoadName\s=\s"ARCMF";', 'onLoadName = "Sandbox {}";'.format(version), line))
			else:
				if re.match(r'^onLoadMission\s=\s"ARCOMM Mission Framework\.";', line, re.I):
					outfile.write(re.sub(r'^onLoadMission\s=\s"ARCOMM Mission Framework\.";', 'onLoadMission = "For extended functionality use the ARC_Ares mod available on our forums and at GitHub.com/ARCOMM.";', line))
				else:
					if re.match(r'^respawn\s=\s4;', line, re.I):
						outfile.write(re.sub(r'^respawn\s=\s4;', 'respawn = 3;', line))
					else:
						if re.match(r'^respawnTemplates\[\]\s=\s{"Seagull","f_spectator"};', line, re.I):
							outfile.write(re.sub(r'^respawnTemplates\[\]\s=\s{"Seagull","f_spectator"};', 'respawnTemplates[] = {"MenuPosition"};', line))
						else:
							outfile.write(line)

copyfile(orig_sqm, new_sqm)
with open(new_sqm) as infile, open(orig_sqm, 'w') as outfile:
	for line in infile:
		if re.match(r'^\t\tbriefingName="ARCMF";', line, re.I):
			outfile.write(re.sub(r'^\t\tbriefingName="ARCMF";', '\t\tbriefingName="Sandbox {}";'.format(version), line))
		else:
			outfile.write(line)

os.remove(new_ext);
os.remove(new_sqm);

for t in ["utes","Sara","fallujah","Chernarus","Chernarus_Summer","Caribou","Takistan","Zargabad","Desert_E","ProvingGrounds_PMC","Shapur_BAF","mbg_celle2","Stratis","bozcaada","Lost","LostW","Kunduz","Altis","lingor3","panthera3","vt5","mske","vtr_porquerolles","torabora","FDF_Isle1_a"]:
	try:
		subprocess.check_output([
			"makepbo",
			"-JNP",
			"{}".format(os.path.abspath(sandbox_dir)),
			"{}/Sandbox_{}.{}.pbo".format(build_dir, version, t)
		], stderr=subprocess.STDOUT)
	except:
		print("Failed to make Sandbox_{}.{}.pbo".format(version, t))
	else:
		print("Successfully made Sandbox_{}.{}.pbo".format(version, t))

if os.path.isdir(sandbox_dir):
	shutil.rmtree(sandbox_dir)