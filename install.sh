#! /bin/sh

# Example install script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build

# This link changes from time to time. I haven't found a reliable hosted installer package for doing regular
# installs like this. You will probably need to grab a current link from: http://unity3d.com/get-unity/download/archive
curl -o Unity.pkg http://netstorage.unity3d.com/unity/b7e030c65c9b/MacEditorInstaller/Unity-5.4.2f2.pkg
curl -o Unity-iOS.pkg http://netstorage.unity3d.com/unity/b7e030c65c9b/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-5.4.2f2.pkg
# curl -o Unity.pkg http://netstorage.unity3d.com/unity/960ebf59018a/MacEditorInstaller/Unity-5.3.5f1.pkg
# curl -o Unity-iOS.pkg http://netstorage.unity3d.com/unity/960ebf59018a/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-5.3.5f1.pkg

sudo installer -dumplog -package Unity.pkg -target /
sudo installer -dumplog -package Unity-iOS.pkg -target /
