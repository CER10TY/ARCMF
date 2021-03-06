class ARC
{
    class misc
    {
        file = "f\arc\misc";
        class ambientAA {};
    };
    class chat
    {
        file = "f\arc\chat";
        class disableAllChannels {};
        class enableAllChannels {};
    };
    class ai
    {
        file = "f\arc\ai";
        class applyLoadout {};
        class pickItemFromAIGear {};
        class pickAttachmentsFromAIGear {};
        class setupAI {};
    };
    class halo
    {
        file = "f\arc\halo";
        class halodrop {};
        class haloprep {};
        class paraDrop {};
    };
    class sandbox
    {
        file = "f\arc\sandbox";
        class setupSandbox {};
        class toggleAdversarial {};
        class setAdversarialStart {};
    };
    class reinforcements {
        file = "f\arc\reinforcements";
        class toggleReinforcements {};
        class rejoinMission {};
    };
    class helpers
    {
        file = "f\arc\helpers";
        class execHC {};
        class execHC_remote {};
        class fileExists {};
        class getFactionFromSide {};
        class isRespawnEnabled {};
        class buildBriefingFromConfig {};
        class isPlayerReady {};
        class getStartingPos {};
        class getCfgBool {};
        class broadcastDiary {};
        class getUnitType {};
    };
    class radios
    {
        file = "f\arc\radios";
        class addMissingRadio {};
    };
    class markers
    {
        file = "f\arc\markers";
        class addTrackingMarker {};
        class getMarkerType {};
        class getMarkerTexture {};
        class markerExists {};
        class drawOnMap {};
    };
    class tracker
    {
        file = "f\arc\tracker";
        class initTracker {};
        class updateTracker {};
    };
    class gear
    {
        file = "f\arc\gear";
        class switchCamo {};
        class reassignGear {};
    };
};
