// Must call init fist
dll_name="video_player.dll";

EXT_VIDEO_INIT=external_define(dll_name,"init",dll_cdecl,ty_real,1,ty_string);                        // Initialises the dll
EXT_VIDEO_LOAD=external_define(dll_name,"load",dll_cdecl,ty_real,3,ty_real,ty_real,ty_string);      // Loads the video
EXT_VIDEO_DRAW=external_define(dll_name,"draw",dll_cdecl,ty_real,0);                                // Draws the current frame
EXT_VIDEO_POSITION=external_define(dll_name,"setPosition",dll_cdecl,ty_real,2,ty_real,ty_real);     // Sets the x/y position of the video
EXT_VIDEO_PLAY=external_define(dll_name,"play",dll_cdecl,ty_real,0);                                // Starts playing the video
EXT_VIDEO_STOP=external_define(dll_name,"stop",dll_cdecl,ty_real,0);                                // Starts playing the video
EXT_VIDEO_PAUSE=external_define(dll_name,"pause",dll_cdecl,ty_real,0);                              // Pauses playback
EXT_VIDEO_RESTART=external_define(dll_name,"restart",dll_cdecl,ty_real,0);                          // Restarts video
EXT_VIDEO_PLAY_STATUS=external_define(dll_name,"getPlaying",dll_cdecl,ty_real,0);                   // Returns whether the video is currently playing or not
EXT_VIDEO_FULLSCREEN=external_define(dll_name,"setFullscreen",dll_cdecl,ty_real,3,ty_real,ty_real,ty_real);                   // Set fullscreen mode
EXT_VIDEO_SCALE=external_define(dll_name,"setScale",dll_cdecl,ty_real,2,ty_real,ty_real);           // Set scale
EXT_VIDEO_ROTATE=external_define(dll_name,"setRotation",dll_cdecl,ty_real,1,ty_real);               // Set rotate
EXT_VIDEO_ALPHA=external_define(dll_name,"setAlpha",dll_cdecl,ty_real,1,ty_real);                   // Set alpha
EXT_VIDEO_VOLUME_SET=external_define(dll_name,"setVolume",dll_cdecl,ty_real,1,ty_real);             // Set volume
EXT_VIDEO_VOLUME_GET=external_define(dll_name,"getVolume",dll_cdecl,ty_real,0);             // Set volume

// New for 1.0.5
EXT_VIDEO_GET_VERSION=external_define(dll_name,"getVersion",dll_cdecl,ty_real,0);           
EXT_VIDEO_UNLOAD=external_define(dll_name,"release",dll_cdecl,ty_real,0);           

return external_call(EXT_VIDEO_INIT,window_device());
