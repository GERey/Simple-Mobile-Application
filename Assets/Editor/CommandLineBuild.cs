using UnityEngine;
using UnityEditor;
using System.Linq;
using System.Collections;
using System.Collections.Generic;
using System.IO;

public class CommandLineBuild {
	[MenuItem("File/CommandLineBuild/iOS")]
	public static void iOSBuild ()
	{
        	EditorUserBuildSettings.SwitchActiveBuildTarget(BuildTarget.iOS);
        		// var scenes = "Assets/Scenes/Main.unity";

                List<EditorBuildSettingsScene> editorBuildSettingsScenes = new List<EditorBuildSettingsScene>();
                // foreach (var sceneAsset in m_SceneAssets)
                // {
                //     string scenePath = AssetDatabase.GetAssetPath (sceneAsset);
                //     if (!string.IsNullOrEmpty (scenePath))
                //         editorBuildSettingsScenes.Add (new EditorBuildSettingsScene (scenePath, true));
                // }

                string scenePath = "Assets/Scenes/Main.unity";
                editorBuildSettingsScenes.Add (new EditorBuildSettingsScene (scenePath, true));

        	var opts = BuildOptions.None;

        	BuildPipeline.BuildPlayer(editorBuildSettingsScenes.ToArray(), "Builds/iOS", BuildTarget.iOS, opts);
	}
}


// using UnityEditor;
// class CommandLineBuild
// {
//      static void PerformBuild ()
//      {
//          string[] scenes = { "Assets/MyScene.unity" };
//          BuildPipeline.BuildPlayer(scenes, ...);
//      }
// }