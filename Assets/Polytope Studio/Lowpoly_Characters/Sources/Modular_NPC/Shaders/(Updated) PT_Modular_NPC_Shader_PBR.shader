// Made with Amplify Shader Editor v1.9.9.14
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Polytope Studio/ PT_Medieval Modular NPC Shader PBR"
{
	Properties
	{
		[HideInInspector] _Cutoff("Alpha Cutoff", Range(0, 1)) = 0.5
		[HDR] _SKINCOLOR( "SKIN COLOR", Color ) = ( 2.02193, 1.0081, 0.6199315, 0 )
		_SKINSMOOTHNESS( "SKIN SMOOTHNESS", Range( 0, 1 ) ) = 0.3
		[HDR] _EYESCOLOR( "EYES COLOR", Color ) = ( 0.0734529, 0.1320755, 0.05046281, 1 )
		_EYESSMOOTHNESS( "EYES SMOOTHNESS", Range( 0, 1 ) ) = 0.7
		[HDR] _HAIRCOLOR( "HAIR COLOR", Color ) = ( 1, 0, 0, 0 )
		_HAIRSMOOTHNESS( "HAIR SMOOTHNESS", Range( 0, 1 ) ) = 0.1
		[HDR] _SCLERACOLOR( "SCLERA COLOR", Color ) = ( 0.9056604, 0.8159487, 0.8159487, 0 )
		_SCLERASMOOTHNESS( "SCLERA SMOOTHNESS", Range( 0, 1 ) ) = 0.5
		[HDR] _LIPSCOLOR( "LIPS COLOR", Color ) = ( 0.8301887, 0.3185886, 0.2780349, 0 )
		_LIPSSMOOTHNESS( "LIPS SMOOTHNESS", Range( 0, 1 ) ) = 0.4
		[HDR] _OTHERCOLOR( "OTHER COLOR", Color ) = ( 0.5188679, 0.4637216, 0.3206212, 0 )
		_OTHERSMOOTHNESS( "OTHER SMOOTHNESS", Range( 0, 1 ) ) = 0.3
		[HDR] _METAL1COLOR( "METAL 1 COLOR", Color ) = ( 0.8792791, 0.9922886, 1.007606, 0 )
		_METAL1METALLIC( "METAL 1 METALLIC", Range( 0, 1 ) ) = 0.65
		_METAL1SMOOTHNESS( "METAL 1 SMOOTHNESS", Range( 0, 1 ) ) = 0.7
		[HDR] _METAL2COLOR( "METAL 2 COLOR", Color ) = ( 0.4674706, 0.4677705, 0.5188679, 0 )
		_METAL2METALLIC( "METAL 2 METALLIC", Range( 0, 1 ) ) = 0.65
		_METAL2SMOOTHNESS( "METAL 2 SMOOTHNESS", Range( 0, 1 ) ) = 0.7
		[HDR] _METAL3COLOR( "METAL 3 COLOR", Color ) = ( 0.4383232, 0.4383232, 0.4716981, 0 )
		_METAL3METALLIC( "METAL 3 METALLIC", Range( 0, 1 ) ) = 0.65
		_METAL3SMOOTHNESS( "METAL 3 SMOOTHNESS", Range( 0, 1 ) ) = 0.7
		[HDR] _METAL4COLOR( "METAL 4 COLOR", Color ) = ( 0.4383232, 0.4383232, 0.4716981, 0 )
		_METAL4METALLIC( "METAL 4 METALLIC", Range( 0, 1 ) ) = 0.65
		_METAL4SMOOTHNESS( "METAL 4 SMOOTHNESS", Range( 0, 1 ) ) = 0.7
		[HDR] _LEATHER1COLOR( "LEATHER 1 COLOR", Color ) = ( 0.4811321, 0.2041155, 0.08851016, 1 )
		_LEATHER1SMOOTHNESS( "LEATHER 1 SMOOTHNESS", Range( 0, 1 ) ) = 0.3
		[HDR] _LEATHER2COLOR( "LEATHER 2 COLOR", Color ) = ( 0.4245283, 0.190437, 0.09011215, 1 )
		_LEATHER2SMOOTHNESS( "LEATHER 2 SMOOTHNESS", Range( 0, 1 ) ) = 0.3
		[HDR] _LEATHER3COLOR( "LEATHER 3 COLOR", Color ) = ( 0.1698113, 0.04637412, 0.02963688, 1 )
		_LEATHER3SMOOTHNESS( "LEATHER 3 SMOOTHNESS", Range( 0, 1 ) ) = 0.3
		[HDR] _LEATHER4COLOR( "LEATHER 4 COLOR", Color ) = ( 0.1698113, 0.04637412, 0.02963688, 1 )
		_LEATHER4SMOOTHNESS( "LEATHER 4 SMOOTHNESS", Range( 0, 1 ) ) = 0.3
		[HDR] _CLOTH1COLOR( "CLOTH 1 COLOR", Color ) = ( 0, 0.1792453, 0.05062231, 0 )
		[HDR] _CLOTH2COLOR( "CLOTH 2 COLOR", Color ) = ( 1, 0, 0, 0 )
		[HDR] _CLOTH3COLOR( "CLOTH 3 COLOR", Color ) = ( 0.3962264, 0.3391397, 0.2710039, 0 )
		[HDR] _CLOTH4COLOR( "CLOTH 4 COLOR", Color ) = ( 0.2011392, 0.3773585, 0.3739074, 0 )
		[HDR] _FEATHERS1COLOR( "FEATHERS 1 COLOR", Color ) = ( 0.7735849, 0.492613, 0.492613, 0 )
		[HDR] _FEATHERS2COLOR( "FEATHERS 2 COLOR", Color ) = ( 0.6792453, 0, 0, 0 )
		[HDR] _COATOFARMSCOLOR( "COAT OF ARMS COLOR", Color ) = ( 1, 0, 0, 0 )
		[NoScaleOffset] _COATOFARMSMASK( "COAT OF ARMS MASK", 2D ) = "black" {}
		_OCCLUSION( "OCCLUSION", Range( 0, 1 ) ) = 0.5
		[Toggle] _MetalicOn( "Metalic On", Float ) = 1
		[Toggle] _SmoothnessOn( "Smoothness On", Float ) = 1
		[HideInInspector] _TextureSample0( "Texture Sample 0", 2D ) = "white" {}
		[HideInInspector] _TextureSample2( "Texture Sample 2", 2D ) = "white" {}


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5

		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		//_InstancedTerrainNormals("Instanced Terrain Normals", Float) = 1.0

		[ToggleOff(_SPECULARHIGHLIGHTS_OFF)] _SpecularHighlights("Specular Highlights", Float) = 1.0
		[ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1.0
		[ToggleOff] _ScreenSpaceReflections("Screen Space Reflections", Float) = 1.0
		[ToggleUI] _ScreenSpaceReflectionsContributeTransparent("Screen Space Reflections Contribute Transparent", Float) = 1.0
		//[HideInInspector][ToggleUI] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}

		//[HideInInspector][ToggleUI] _AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		//[HideInInspector] _XRMotionVectorsPass("_XRMotionVectorsPass", Float) = 1

		//[HideInInspector] _AlphaClip("__clip", Float) = 1.0
	}

	SubShader
	{
		PackageRequirements
		{
			"com.unity.render-pipelines.universal": "[17.0,18.0]"
		}

		

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Lit" }

	LOD 0

		Cull Back
		ZWrite On
		ZClip True
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef GLOBAL_HEADER_INCLUDED
		#define GLOBAL_HEADER_INCLUDED

			#define ASE_ADJUST_CLIP_POSITION( x ) x

			#if ( UNITY_VERSION >= 60070000 )
				#define ASE_LIGHT_ACCUM4 URP_LIGHT_ACCUM4
			#else
				#define ASE_LIGHT_ACCUM4 half4
			#endif

			#ifndef ASE_TESS_FUNCS
			#define ASE_TESS_FUNCS
			float4 FixedTess( float tessValue )
			{
				return tessValue;
			}

			float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
			{
				float3 wpos = mul(o2w,vertex).xyz;
				float dist = distance (wpos, cameraPos);
				float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
				return f;
			}

			float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
			{
				float4 tess;
				tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
				tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
				tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
				tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
				return tess;
			}

			float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
			{
				float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
				float len = distance(wpos0, wpos1);
				float f = max(len * scParams.y / (edgeLen * dist), 1.0);
				return f;
			}

			float DistanceFromPlane (float3 pos, float4 plane)
			{
				float d = dot (float4(pos,1.0f), plane);
				return d;
			}

			bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
			{
				float4 planeTest;
				planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
				planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
				planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
				planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
								(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
				return !all (planeTest);
			}

			float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
			{
				float3 f;
				f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
				f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
				f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

				return CalcTriEdgeTessFactors (f);
			}

			float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
			{
				float3 pos0 = mul(o2w,v0).xyz;
				float3 pos1 = mul(o2w,v1).xyz;
				float3 pos2 = mul(o2w,v2).xyz;
				float4 tess;
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
				return tess;
			}

			float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
			{
				float3 pos0 = mul(o2w,v0).xyz;
				float3 pos1 = mul(o2w,v1).xyz;
				float3 pos2 = mul(o2w,v2).xyz;
				float4 tess;

				if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
				{
					tess = 0.0f;
				}
				else
				{
					tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
					tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
					tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
					tess.w = (tess.x + tess.y + tess.z) / 3.0f;
				}
				return tess;
			}
			#endif //ASE_TESS_FUNCS

		#endif //GLOBAL_HEADER_INCLUDED
		ENDHLSL

		
		Pass
		{
			
			Name "ForwardLit"
			Tags { "LightMode"="UniversalForward" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#pragma shader_feature_local_fragment _SCREENSPACEREFLECTIONS_OFF
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#if ( UNITY_VERSION >= 60070000 )
			#pragma multi_compile _ _EXPOSURE
			#endif

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN

			#if ( UNITY_VERSION >= 60070000 )
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHTS
			#pragma multi_compile _ _LIGHT_FALLOFF_QUADRATIC
			#else
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
			#endif

            #pragma multi_compile _ EVALUATE_SH_MIXED EVALUATE_SH_VERTEX
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION

			#if ( UNITY_VERSION >= 60010000 )
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_ATLAS
			#endif

			#if defined(UNITY_PLATFORM_META_QUEST) && ( UNITY_VERSION >= 60050000 )
            #pragma multi_compile _ META_QUEST_LIGHTUNROLL
            #endif

			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH

			#if ( UNITY_VERSION >= 60030000 )
			#pragma multi_compile_fragment _ _SCREEN_SPACE_IRRADIANCE
			#endif

			#if ( UNITY_VERSION >= 60060000 ) && defined( ASE_SCREEN_SPACE_REFLECTIONS )
			#pragma multi_compile_fragment _ _SCREEN_SPACE_REFLECTION
			#endif

			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES

			#if ( UNITY_VERSION >= 60070000 )
			#pragma multi_compile_fragment _ _VOLUMETRIC_FOG
			#pragma multi_compile_fragment _ _CLUSTER_LIGHT_LOOP
			#elif ( UNITY_VERSION >= 60010000 )
			#pragma multi_compile _ _CLUSTER_LIGHT_LOOP
			#else
			#pragma multi_compile _ _FORWARD_PLUS
			#endif

			#if ( UNITY_VERSION >= 60070000 ) && defined( _SURFACE_TYPE_TRANSPARENT ) && defined( _TRANSPARENT_RECEIVE_FOG )
			#pragma multi_compile_fragment _FOG_ANALYTIC _FOG_VOLUMETRIC
			#endif

            #if defined(UNITY_PLATFORM_META_QUEST) && ( UNITY_VERSION >= 60050000 )
            #pragma multi_compile _ META_QUEST_ORTHO_PROJ
            #pragma multi_compile _ META_QUEST_NO_SPOTLIGHTS_LIGHT_LOOP
            #endif

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON

			#if ( UNITY_VERSION >= 60010000 )
			#pragma multi_compile _ LIGHTMAP_BICUBIC_SAMPLING
			#endif

			#if ( UNITY_VERSION >= 60030000 )
			#pragma multi_compile_fragment _ REFLECTION_PROBE_ROTATION
			#endif

			#pragma multi_compile _ USE_LEGACY_LIGHTMAPS

			#if ( UNITY_VERSION < 60070000 ) && defined( DOTS_INSTANCING_ON ) && !defined( USE_LEGACY_LIGHTMAPS )
				// @diogo: URP passes its Texture2D dynamic lightmap to Texture2DArray lightmap params
				#undef DYNAMICLIGHTMAP_ON
			#endif

			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#define SHADERPASS SHADERPASS_FORWARD

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#if ( UNITY_VERSION >= 60010000 )
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Fog.hlsl"
			#else
			#pragma multi_compile_fog
			#endif
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined( UNITY_INSTANCING_ENABLED ) && defined( ASE_INSTANCED_TERRAIN ) && ( defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL) || defined(_INSTANCEDTERRAINNORMALS_PIXEL) )
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1


			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			#if ( UNITY_VERSION < 60010000 )
				#define USE_CLUSTER_LIGHT_LOOP USE_FORWARD_PLUS
				#define CLUSTER_LIGHT_LOOP_SUBTRACTIVE_LIGHT_CHECK FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					float4 texcoord1 : TEXCOORD1;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					float4 texcoord2 : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				half3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2; // holds terrainUV ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
				float4 lightmapUVOrVertexSH : TEXCOORD3;
				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					half4 fogFactorAndVertexLight : TEXCOORD4;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD5;
				#endif
				#if defined(USE_APV_PROBE_OCCLUSION)
					float4 probeOcclusion : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample2;
			sampler2D _TextureSample0;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord7.xy = input.texcoord.xy;
				output.ase_texcoord7.zw = input.texcoord1.xy;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif
				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				#ifdef ASE_CUSTOM_MOTION_VECTOR
					// Declared so the Motion Vector output port surfaces on the master node; only consumed by the motion vector passes.
					float3 aseCustomMotionVector = float3(0, 0, 0);
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				OUTPUT_LIGHTMAP_UV(input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy);
				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				OUTPUT_SH4(vertexInput.positionWS, normalInput.normalWS.xyz, GetWorldSpaceNormalizeViewDir(vertexInput.positionWS), output.lightmapUVOrVertexSH.xyz, output.probeOcclusion);

				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					output.fogFactorAndVertexLight = 0;
					#if defined(ASE_FOG) && !defined(_FOG_FRAGMENT)
						output.fogFactorAndVertexLight.x = ComputeFogFactor(vertexInput.positionCS.z);
					#endif
					#ifdef _ADDITIONAL_LIGHTS_VERTEX
						half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );
						output.fogFactorAndVertexLight.yzw = vertexLight;
					#endif
				#endif

				output.positionCS = ASE_ADJUST_CLIP_POSITION( vertexInput.positionCS );
				output.positionWS = vertexInput.positionWS;
				output.normalWS = normalInput.normalWS;
				output.tangentWS = float4( normalInput.tangentWS, ( input.tangentOS.w > 0.0 ? 1.0 : -1.0 ) * GetOddNegativeScale() );

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					output.tangentWS.zw = input.texcoord.xy;
					output.tangentWS.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					float4 texcoord1 : TEXCOORD1;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					float4 texcoord2 : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					output.texcoord1 = input.texcoord1;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					output.texcoord2 = input.texcoord2;
				#endif
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				#endif
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag ( PackedVaryings input
						#if defined( ASE_WRITE_DEPTH )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						#if ( UNITY_VERSION >= 60020000 )
						, out uint outRenderingLayers : SV_Target1
						#else
						, out float4 outRenderingLayers : SV_Target1
						#endif
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined( _SURFACE_TYPE_TRANSPARENT )
					const bool isTransparent = true;
				#else
					const bool isTransparent = false;
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					float4 shadowCoord = TransformWorldToShadowCoord( input.positionWS );
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				// @diogo: mikktspace compliant
				float renormFactor = 1.0 / max( FLT_MIN, length( input.normalWS ) );

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( PositionWS );
				float3 ViewDirWS = GetWorldSpaceNormalizeViewDir( PositionWS );
				float4 ShadowCoord = shadowCoord;
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );
				float3 TangentWS = input.tangentWS.xyz * renormFactor;
				float3 BitangentWS = cross( input.normalWS, input.tangentWS.xyz ) * input.tangentWS.w * renormFactor;
				float3 NormalWS = input.normalWS * renormFactor;

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					float2 sampleCoords = (input.tangentWS.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					NormalWS = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					TangentWS = -cross(GetObjectToWorldMatrix()._13_23_33, NormalWS);
					BitangentWS = cross(NormalWS, -TangentWS);
				#endif

				float2 uv_TextureSample2 = input.ase_texcoord7.xy * _TextureSample2_ST.xy + _TextureSample2_ST.zw;
				float4 tex2DNode199 = tex2D( _TextureSample2, uv_TextureSample2 );
				float4 color638 = IsGammaSpace() ? float4( 0.4980392, 1, 1, 1 ) : float4( 0.2122307, 1, 1, 1 );
				float2 uv_TextureSample0 = input.ase_texcoord7.xy * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
				float4 tex2DNode617 = tex2D( _TextureSample0, uv_TextureSample0 );
				float4 lerpResult189 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( color638.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color637 = IsGammaSpace() ? float4( 0.4980392, 1, 0.4980392, 1 ) : float4( 0.2122307, 1, 0.2122307, 1 );
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( color637.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color636 = IsGammaSpace() ? float4( 0, 0, 1, 1 ) : float4( 0, 0, 1, 1 );
				float4 lerpResult598 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH4COLOR ) , saturate( ( 1.0 - ( ( distance( color636.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color635 = IsGammaSpace() ? float4( 0, 1, 1, 1 ) : float4( 0, 1, 1, 1 );
				float4 lerpResult171 = lerp( lerpResult598 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( color635.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color634 = IsGammaSpace() ? float4( 0, 1, 0, 1 ) : float4( 0, 1, 0, 1 );
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( color634.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color633 = IsGammaSpace() ? float4( 0, 0.4980392, 0, 1 ) : float4( 0, 0.2122307, 0, 1 );
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( color633.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color632 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float temp_output_599_0 = saturate( ( 1.0 - ( ( distance( color632.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult602 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER4COLOR ) , temp_output_599_0);
				float4 color631 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( color631.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult602 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float4 color630 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( color630.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float4 color629 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( color629.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float4 color628 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float temp_output_603_0 = saturate( ( 1.0 - ( ( distance( color628.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult606 = lerp( lerpResult162 , ( tex2DNode199 * _METAL4COLOR ) , temp_output_603_0);
				float4 color627 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( color627.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult606 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float4 color625 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( color625.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float4 color624 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( color624.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float4 color623 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( color623.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _OTHERCOLOR ) , temp_output_145_0);
				float4 color622 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( color622.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float4 color621 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( color621.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float4 color618 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( color618.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float4 color619 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( color619.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float4 color620 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( color620.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord7.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g142 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4( 0, 0, 0, 0 ) : float4( 0, 0, 0, 0 );
				float4 temp_output_2_0_g142 = color25;
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g142 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g142 , saturate( ( ( distance( temp_output_1_0_g142 , temp_output_2_0_g142 ) - _Vector0.x ) / max( _Vector0.y, 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g142 , ( 1.0 - temp_output_9_0 ));
				
				float toggleSwitch584 = ( float )0;
				if( _MetalicOn )
				{
					float lerpResult610 = lerp( 0.0 , _METAL4METALLIC , temp_output_603_0);
					float lerpResult315 = lerp( lerpResult610 , _METAL3METALLIC , temp_output_117_0);
					float lerpResult319 = lerp( lerpResult315 , _METAL2METALLIC , temp_output_127_0);
					float lerpResult316 = lerp( lerpResult319 , _METAL1METALLIC , temp_output_123_0);
					toggleSwitch584 = lerpResult316;
				}
				else
				{
					toggleSwitch584 = 0.0;
				}
				
				float toggleSwitch585 = ( float )0;
				if( _SmoothnessOn )
				{
					float lerpResult612 = lerp( 0.0 , _LEATHER4SMOOTHNESS , temp_output_599_0);
					float lerpResult336 = lerp( lerpResult612 , _LEATHER3SMOOTHNESS , temp_output_165_0);
					float lerpResult332 = lerp( lerpResult336 , _LEATHER2SMOOTHNESS , temp_output_158_0);
					float lerpResult334 = lerp( lerpResult332 , _LEATHER1SMOOTHNESS , temp_output_157_0);
					float lerpResult608 = lerp( lerpResult334 , _METAL4SMOOTHNESS , temp_output_603_0);
					float lerpResult327 = lerp( lerpResult608 , _METAL3SMOOTHNESS , temp_output_117_0);
					float lerpResult331 = lerp( lerpResult327 , _METAL2SMOOTHNESS , temp_output_127_0);
					float lerpResult328 = lerp( lerpResult331 , _METAL1SMOOTHNESS , temp_output_123_0);
					float lerpResult321 = lerp( lerpResult328 , _OTHERSMOOTHNESS , temp_output_145_0);
					float lerpResult325 = lerp( lerpResult321 , _LIPSSMOOTHNESS , temp_output_149_0);
					float lerpResult322 = lerp( lerpResult325 , _SCLERASMOOTHNESS , temp_output_150_0);
					float lerpResult306 = lerp( lerpResult322 , _EYESSMOOTHNESS , temp_output_71_0);
					float lerpResult304 = lerp( lerpResult306 , _HAIRSMOOTHNESS , temp_output_67_0);
					float lerpResult302 = lerp( lerpResult304 , _SKINSMOOTHNESS , temp_output_63_0);
					toggleSwitch585 = lerpResult302;
				}
				else
				{
					toggleSwitch585 = 0.0;
				}
				

				float3 BaseColor = lerpResult64.rgb;
				float3 Normal = float3(0, 0, 1);
				float3 Specular = 0.5;
				float Metallic = toggleSwitch584;
				float Smoothness = toggleSwitch585;
				float Occlusion =  (1.0 + ( _OCCLUSION - 0.0 ) * ( 0.5 - 1.0 ) / ( 1.0 - 0.0 ) );
				float3 Emission = 0;
				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
					float AlphaClipThresholdShadow = 0.5;
				#endif
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_CHANGES_WORLD_POS)
					ShadowCoord = TransformWorldToShadowCoord( PositionWS );
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = PositionWS;
				inputData.positionCS = input.positionCS;
				inputData.normalizedScreenSpaceUV = ScreenPosNorm.xy;
				inputData.viewDirectionWS = ViewDirWS;
				inputData.shadowCoord = ShadowCoord;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(TangentWS, BitangentWS, NormalWS));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = NormalWS;
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = InitializeInputDataFog(float4(inputData.positionWS, 1.0), input.fogFactorAndVertexLight.x);
				#endif
				#ifdef _ADDITIONAL_LIGHTS_VERTEX
					inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;
				#endif
				#if ( UNITY_VERSION >= 60070000 )
					inputData.preExposureMultiplier = GetPreExposureMultiplier();
				#endif

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#if ( UNITY_VERSION >= 60070000 )
					GIParams giParams = (GIParams)0;
					#if defined(LIGHTMAP_ON)
						giParams.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						giParams.vertexSH = SH;
					#endif
					#if defined(DYNAMICLIGHTMAP_ON)
						giParams.dynamicLightmapUV = input.dynamicLightmapUV.xy;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						giParams.vertexProbeOcclusion = input.probeOcclusion;
					#endif
					giParams.positionWS = inputData.positionWS;
					giParams.normalWS = inputData.normalWS;
					giParams.viewDirWS = inputData.viewDirectionWS;
					giParams.positionSS = input.positionCS.xy;
					giParams.isSurfaceTypeTransparent = isTransparent;
					InitializeBakedGI( giParams, inputData.bakedGI, inputData.shadowMask );
				#elif defined(_SCREEN_SPACE_IRRADIANCE) && ( UNITY_VERSION >= 60030000 )
					#if ( UNITY_VERSION >= 60060000 )
						inputData.bakedGI = SAMPLE_GI(_ScreenSpaceIrradiance, input.positionCS.xy, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI(_ScreenSpaceIrradiance, input.positionCS.xy);
					#endif
				#elif defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#elif !defined(LIGHTMAP_ON) && (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
					inputData.bakedGI = SAMPLE_GI( SH, GetAbsolutePositionWS(inputData.positionWS),
						inputData.normalWS,
						inputData.viewDirectionWS,
						input.positionCS.xy,
						input.probeOcclusion,
						inputData.shadowMask );
				#else
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
					#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						inputData.probeOcclusion = input.probeOcclusion;
					#endif
					SETUP_DEBUG_TEXTURE_DATA_NO_UV( inputData );
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#if defined(_DBUFFER)
					ApplyDecalToSurfaceData(input.positionCS, surfaceData, inputData);
				#endif

				#ifdef ASE_LIGHTING_SIMPLE
					ASE_LIGHT_ACCUM4 color = UniversalFragmentBlinnPhong( inputData, surfaceData);
				#else
					ASE_LIGHT_ACCUM4 color = UniversalFragmentPBR( inputData, surfaceData);
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#define SUM_LIGHT_TRANSMISSION(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 transmission = max( 0, -dot( inputData.normalWS, Light.direction ) ) * atten * Transmission;\
						color.rgb += BaseColor * transmission;

					SUM_LIGHT_TRANSMISSION( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_CLUSTER_LIGHT_LOOP
							[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								CLUSTER_LIGHT_LOOP_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSMISSION( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSMISSION( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#define SUM_LIGHT_TRANSLUCENCY(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 lightDir = Light.direction + inputData.normalWS * normal;\
						half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );\
						half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;\
						color.rgb += BaseColor * translucency * strength;

					SUM_LIGHT_TRANSLUCENCY( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_CLUSTER_LIGHT_LOOP
							[loop] for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								CLUSTER_LIGHT_LOOP_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSLUCENCY( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS, inputData.shadowMask);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSLUCENCY( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( NormalWS,0 ) ).xyz * ( 1.0 - dot( NormalWS, ViewDirWS ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					#if ( UNITY_VERSION >= 60070000 )
						// @diogo: the opaque texture is already pre-exposed, and color is exposed again below
						refraction *= GetInvPreExposureMultiplier();
					#endif
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3(0,0,0), inputData.fogCoord);
					#else
						color.rgb = MixFog(color.rgb, inputData.fogCoord);
					#endif
				#endif
				#if ( UNITY_VERSION >= 60070000 )
					color.rgb = ClampExposed(inputData.preExposureMultiplier * color.rgb);
				#endif
				#if ( UNITY_VERSION >= 60070000 ) && defined( _SURFACE_TYPE_TRANSPARENT ) && defined( _TRANSPARENT_RECEIVE_FOG )
					color.rgb = MixVolumetricFog( color.rgb, color.a, ASE_BLEND_MODE, false, input.positionCS );
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					#if ( UNITY_VERSION >= 60020000 )
					outRenderingLayers = EncodeMeshRenderingLayer();
					#else
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
					#endif
				#endif

				#if defined( ASE_OPAQUE_KEEP_ALPHA )
					return half4( color.rgb, color.a );
				#else
					return half4( color.rgb, OutputAlpha( color.a, isTransparent ) );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#pragma multi_compile _ _CASTING_PUNCTUAL_LIGHT_SHADOW // @diogo: removed _vertex for POM node

			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			float3 _LightDirection;
			float3 _LightPosition;

			
			PackedVaryings VertexFunction( Attributes input )
			{
				PackedVaryings output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				float3 positionWS = TransformObjectToWorld( input.positionOS.xyz );
				float3 normalWS = TransformObjectToWorldDir(input.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = ASE_ADJUST_CLIP_POSITION( TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS)) );

				//code for UNITY_REVERSED_Z is moved into Shadows.hlsl from 6000.0.22 and or higher
				positionCS = ApplyShadowClamping(positionCS);

				output.positionCS = positionCS;
				output.positionWS = positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#if defined( ASE_WRITE_DEPTH )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord = TransformWorldToShadowCoord(input.positionWS);
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( input.positionWS );
				float4 ShadowCoord = shadowCoord;
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );

				

				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
					float AlphaClipThresholdShadow = 0.5;
				#endif

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#if defined( _ALPHATEST_ON )
					#if defined( _ALPHATEST_SHADOW_ON )
						AlphaDiscard( Alpha, AlphaClipThresholdShadow );
					#else
						AlphaDiscard( Alpha, AlphaClipThreshold );
					#endif
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			

			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				output.positionCS = ASE_ADJUST_CLIP_POSITION( vertexInput.positionCS );
				output.positionWS = vertexInput.positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(	PackedVaryings input
						#if defined( ASE_WRITE_DEPTH )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord = TransformWorldToShadowCoord(input.positionWS);
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( input.positionWS );
				float4 ShadowCoord = shadowCoord;
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );

				

				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300

			#pragma shader_feature EDITOR_VISUALIZATION

			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1


			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD1;
					float4 LightCoord : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample2;
			sampler2D _TextureSample0;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord3.xy = input.texcoord.xy;
				output.ase_texcoord3.zw = input.texcoord1.xy;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(input.positionOS.xyz, input.texcoord.xy, input.texcoord1.xy, input.texcoord2.xy, VizUV, LightCoord);
					output.VizUV = float4(VizUV, 0, 0);
					output.LightCoord = LightCoord;
				#endif

				output.positionCS = MetaVertexPosition( input.positionOS, input.texcoord1.xy, input.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );
				output.positionWS = TransformObjectToWorld( input.positionOS.xyz );
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				output.texcoord1 = input.texcoord1;
				output.texcoord2 = input.texcoord2;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord = TransformWorldToShadowCoord(input.positionWS);
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( input.positionWS );
				float4 ShadowCoord = shadowCoord;

				float2 uv_TextureSample2 = input.ase_texcoord3.xy * _TextureSample2_ST.xy + _TextureSample2_ST.zw;
				float4 tex2DNode199 = tex2D( _TextureSample2, uv_TextureSample2 );
				float4 color638 = IsGammaSpace() ? float4( 0.4980392, 1, 1, 1 ) : float4( 0.2122307, 1, 1, 1 );
				float2 uv_TextureSample0 = input.ase_texcoord3.xy * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
				float4 tex2DNode617 = tex2D( _TextureSample0, uv_TextureSample0 );
				float4 lerpResult189 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( color638.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color637 = IsGammaSpace() ? float4( 0.4980392, 1, 0.4980392, 1 ) : float4( 0.2122307, 1, 0.2122307, 1 );
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( color637.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color636 = IsGammaSpace() ? float4( 0, 0, 1, 1 ) : float4( 0, 0, 1, 1 );
				float4 lerpResult598 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH4COLOR ) , saturate( ( 1.0 - ( ( distance( color636.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color635 = IsGammaSpace() ? float4( 0, 1, 1, 1 ) : float4( 0, 1, 1, 1 );
				float4 lerpResult171 = lerp( lerpResult598 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( color635.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color634 = IsGammaSpace() ? float4( 0, 1, 0, 1 ) : float4( 0, 1, 0, 1 );
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( color634.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color633 = IsGammaSpace() ? float4( 0, 0.4980392, 0, 1 ) : float4( 0, 0.2122307, 0, 1 );
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( color633.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color632 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float temp_output_599_0 = saturate( ( 1.0 - ( ( distance( color632.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult602 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER4COLOR ) , temp_output_599_0);
				float4 color631 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( color631.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult602 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float4 color630 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( color630.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float4 color629 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( color629.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float4 color628 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float temp_output_603_0 = saturate( ( 1.0 - ( ( distance( color628.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult606 = lerp( lerpResult162 , ( tex2DNode199 * _METAL4COLOR ) , temp_output_603_0);
				float4 color627 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( color627.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult606 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float4 color625 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( color625.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float4 color624 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( color624.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float4 color623 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( color623.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _OTHERCOLOR ) , temp_output_145_0);
				float4 color622 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( color622.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float4 color621 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( color621.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float4 color618 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( color618.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float4 color619 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( color619.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float4 color620 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( color620.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord3.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g142 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4( 0, 0, 0, 0 ) : float4( 0, 0, 0, 0 );
				float4 temp_output_2_0_g142 = color25;
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g142 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g142 , saturate( ( ( distance( temp_output_1_0_g142 , temp_output_2_0_g142 ) - _Vector0.x ) / max( _Vector0.y, 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g142 , ( 1.0 - temp_output_9_0 ));
				

				float3 BaseColor = lerpResult64.rgb;
				float3 Emission = 0;
				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = input.VizUV.xy;
					metaInput.LightCoord = input.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#define SHADERPASS SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1


			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample2;
			sampler2D _TextureSample0;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_TRANSFER_INSTANCE_ID( input, output );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( output );

				output.ase_texcoord1.xy = input.ase_texcoord.xy;
				output.ase_texcoord1.zw = input.ase_texcoord1.xy;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				output.positionCS = vertexInput.positionCS;
				output.positionWS = vertexInput.positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.ase_texcoord = input.ase_texcoord;
				output.ase_texcoord1 = input.ase_texcoord1;
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				output.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag(PackedVaryings input  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord = TransformWorldToShadowCoord(input.positionWS);
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( input.positionWS );
				float4 ShadowCoord = shadowCoord;

				float2 uv_TextureSample2 = input.ase_texcoord1.xy * _TextureSample2_ST.xy + _TextureSample2_ST.zw;
				float4 tex2DNode199 = tex2D( _TextureSample2, uv_TextureSample2 );
				float4 color638 = IsGammaSpace() ? float4( 0.4980392, 1, 1, 1 ) : float4( 0.2122307, 1, 1, 1 );
				float2 uv_TextureSample0 = input.ase_texcoord1.xy * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
				float4 tex2DNode617 = tex2D( _TextureSample0, uv_TextureSample0 );
				float4 lerpResult189 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( color638.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color637 = IsGammaSpace() ? float4( 0.4980392, 1, 0.4980392, 1 ) : float4( 0.2122307, 1, 0.2122307, 1 );
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( color637.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color636 = IsGammaSpace() ? float4( 0, 0, 1, 1 ) : float4( 0, 0, 1, 1 );
				float4 lerpResult598 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH4COLOR ) , saturate( ( 1.0 - ( ( distance( color636.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color635 = IsGammaSpace() ? float4( 0, 1, 1, 1 ) : float4( 0, 1, 1, 1 );
				float4 lerpResult171 = lerp( lerpResult598 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( color635.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color634 = IsGammaSpace() ? float4( 0, 1, 0, 1 ) : float4( 0, 1, 0, 1 );
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( color634.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color633 = IsGammaSpace() ? float4( 0, 0.4980392, 0, 1 ) : float4( 0, 0.2122307, 0, 1 );
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( color633.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color632 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float temp_output_599_0 = saturate( ( 1.0 - ( ( distance( color632.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult602 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER4COLOR ) , temp_output_599_0);
				float4 color631 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( color631.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult602 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float4 color630 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( color630.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float4 color629 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( color629.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float4 color628 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float temp_output_603_0 = saturate( ( 1.0 - ( ( distance( color628.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult606 = lerp( lerpResult162 , ( tex2DNode199 * _METAL4COLOR ) , temp_output_603_0);
				float4 color627 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( color627.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult606 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float4 color625 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( color625.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float4 color624 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( color624.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float4 color623 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( color623.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _OTHERCOLOR ) , temp_output_145_0);
				float4 color622 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( color622.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float4 color621 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( color621.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float4 color618 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( color618.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float4 color619 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( color619.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float4 color620 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( color620.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord1.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g142 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4( 0, 0, 0, 0 ) : float4( 0, 0, 0, 0 );
				float4 temp_output_2_0_g142 = color25;
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g142 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g142 , saturate( ( ( distance( temp_output_1_0_g142 , temp_output_2_0_g142 ) - _Vector0.x ) / max( _Vector0.y, 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g142 , ( 1.0 - temp_output_9_0 ));
				

				float3 BaseColor = lerpResult64.rgb;
				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				half4 color = half4(BaseColor, Alpha );

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#pragma shader_feature_local_fragment _SCREENSPACEREFLECTIONS_OFF
			#pragma multi_compile_instancing
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#if ( UNITY_VERSION >= 60060000 )
				#pragma multi_compile _ _WRITE_SMOOTHNESS
				#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
			#endif

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
			//#define SHADERPASS SHADERPASS_DEPTHNORMALS

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if ( UNITY_VERSION >= 60070000 )
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/PackNormalsTexture.hlsl"
			#endif

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined( UNITY_INSTANCING_ENABLED ) && defined( ASE_INSTANCED_TERRAIN ) && ( defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL) || defined(_INSTANCEDTERRAINNORMALS_PIXEL) )
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0


			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				half4 texcoord : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				half3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2; // holds terrainUV ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample0;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord3.xy = input.texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord3.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				output.positionCS = ASE_ADJUST_CLIP_POSITION( vertexInput.positionCS );
				output.positionWS = vertexInput.positionWS;
				output.normalWS = normalInput.normalWS;
				output.tangentWS = float4( normalInput.tangentWS, ( input.tangentOS.w > 0.0 ? 1.0 : -1.0 ) * GetOddNegativeScale() );

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					output.tangentWS.zw = input.texcoord.xy;
					output.tangentWS.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			void frag(	PackedVaryings input
						, out half4 outNormalWS : SV_Target0
						#if defined( ASE_WRITE_DEPTH )
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						#if ( UNITY_VERSION >= 60020000 )
						, out uint outRenderingLayers : SV_Target1
						#else
						, out float4 outRenderingLayers : SV_Target1
						#endif
						#endif
						 )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord = TransformWorldToShadowCoord(input.positionWS);
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				// @diogo: mikktspace compliant
				float renormFactor = 1.0 / max( FLT_MIN, length( input.normalWS ) );

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( input.positionWS );
				float4 ShadowCoord = shadowCoord;
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );
				float3 TangentWS = input.tangentWS.xyz * renormFactor;
				float3 BitangentWS = cross( input.normalWS, input.tangentWS.xyz ) * input.tangentWS.w * renormFactor;
				float3 NormalWS = input.normalWS * renormFactor;

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					float2 sampleCoords = (input.tangentWS.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					NormalWS = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					TangentWS = -cross(GetObjectToWorldMatrix()._13_23_33, NormalWS);
					BitangentWS = cross(NormalWS, -TangentWS);
				#endif

				float4 color620 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float2 uv_TextureSample0 = input.ase_texcoord3.xy * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
				float4 tex2DNode617 = tex2D( _TextureSample0, uv_TextureSample0 );
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( color620.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color619 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( color619.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color621 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( color621.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color618 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( color618.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color622 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( color622.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color623 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( color623.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color624 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( color624.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color625 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( color625.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color627 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( color627.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color628 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float temp_output_603_0 = saturate( ( 1.0 - ( ( distance( color628.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color629 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( color629.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color630 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( color630.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color631 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( color631.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 color632 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float temp_output_599_0 = saturate( ( 1.0 - ( ( distance( color632.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float toggleSwitch585 = ( float )0;
				if( _SmoothnessOn )
				{
					float lerpResult612 = lerp( 0.0 , _LEATHER4SMOOTHNESS , temp_output_599_0);
					float lerpResult336 = lerp( lerpResult612 , _LEATHER3SMOOTHNESS , temp_output_165_0);
					float lerpResult332 = lerp( lerpResult336 , _LEATHER2SMOOTHNESS , temp_output_158_0);
					float lerpResult334 = lerp( lerpResult332 , _LEATHER1SMOOTHNESS , temp_output_157_0);
					float lerpResult608 = lerp( lerpResult334 , _METAL4SMOOTHNESS , temp_output_603_0);
					float lerpResult327 = lerp( lerpResult608 , _METAL3SMOOTHNESS , temp_output_117_0);
					float lerpResult331 = lerp( lerpResult327 , _METAL2SMOOTHNESS , temp_output_127_0);
					float lerpResult328 = lerp( lerpResult331 , _METAL1SMOOTHNESS , temp_output_123_0);
					float lerpResult321 = lerp( lerpResult328 , _OTHERSMOOTHNESS , temp_output_145_0);
					float lerpResult325 = lerp( lerpResult321 , _LIPSSMOOTHNESS , temp_output_149_0);
					float lerpResult322 = lerp( lerpResult325 , _SCLERASMOOTHNESS , temp_output_150_0);
					float lerpResult306 = lerp( lerpResult322 , _EYESSMOOTHNESS , temp_output_71_0);
					float lerpResult304 = lerp( lerpResult306 , _HAIRSMOOTHNESS , temp_output_67_0);
					float lerpResult302 = lerp( lerpResult304 , _SKINSMOOTHNESS , temp_output_63_0);
					toggleSwitch585 = lerpResult302;
				}
				else
				{
					toggleSwitch585 = 0.0;
				}
				

				float3 Normal = float3(0, 0, 1);
				float Smoothness = toggleSwitch585;
				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

				#if defined(_NORMALMAP)
					#if _NORMAL_DROPOFF_TS
						float3 normalWS = TransformTangentToWorld(Normal, half3x3(TangentWS, BitangentWS, NormalWS));
					#elif _NORMAL_DROPOFF_OS
						float3 normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						float3 normalWS = Normal;
					#endif
				#else
					float3 normalWS = NormalWS;
				#endif

				#if ( UNITY_VERSION >= 60070000 )
					outNormalWS = half4( PackNormalWSToTexture( NormalizeNormalPerPixel( normalWS ) ), 0.0 );
				#elif defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(NormalizeNormalPerPixel(normalWS));
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					outNormalWS = half4(packedNormalWS, 0.0);
				#else
					outNormalWS = half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif

				#if ( UNITY_VERSION >= 60060000 )
					#if defined(_WRITE_SMOOTHNESS) && !defined(_SCREENSPACEREFLECTIONS_OFF)
						outNormalWS.a = saturate( Smoothness );
					#endif
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					#if ( UNITY_VERSION >= 60020000 )
					outRenderingLayers = EncodeMeshRenderingLayer();
					#else
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
					#endif
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#pragma shader_feature_local_fragment _SCREENSPACEREFLECTIONS_OFF
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			// Deferred Rendering Path does not support the OpenGL-based graphics API:
			// Desktop OpenGL, OpenGL ES 3.0, WebGL 2.0.
			#pragma exclude_renderers glcore gles3 

			#if ( UNITY_VERSION >= 60070000 )
			#pragma multi_compile _ _EXPOSURE
			#endif

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN

			#if ( UNITY_VERSION >= 60000058 )
			#pragma multi_compile _ EVALUATE_SH_MIXED EVALUATE_SH_VERTEX
			#endif

			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT _SHADOWS_SOFT_LOW _SHADOWS_SOFT_MEDIUM _SHADOWS_SOFT_HIGH

			#if ( UNITY_VERSION >= 60030000 )
			#pragma multi_compile_fragment _ _SCREEN_SPACE_IRRADIANCE
			#endif

			#if ( UNITY_VERSION >= 60060000 ) && defined( ASE_SCREEN_SPACE_REFLECTIONS )
			#pragma multi_compile_fragment _ _SCREEN_SPACE_REFLECTION
			#endif

			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED

			#if ( UNITY_VERSION >= 60070000 )
			#pragma multi_compile_fragment _ _CLUSTER_LIGHT_LOOP
			#elif ( UNITY_VERSION >= 60010000 )
			#pragma multi_compile _ _CLUSTER_LIGHT_LOOP
			#endif

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING

			#if ( UNITY_VERSION < 60070000 )
			#pragma multi_compile _ _MIXED_LIGHTING_SUBTRACTIVE
			#endif

			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ USE_LEGACY_LIGHTMAPS
			#pragma multi_compile _ LIGHTMAP_ON

			#if ( UNITY_VERSION >= 60010000 )
			#pragma multi_compile _ LIGHTMAP_BICUBIC_SAMPLING
			#endif

			#if ( UNITY_VERSION >= 60030000 )
			#pragma multi_compile_fragment _ REFLECTION_PROBE_ROTATION
			#endif

			#pragma multi_compile _ DYNAMICLIGHTMAP_ON

			#if ( UNITY_VERSION < 60070000 ) && defined( DOTS_INSTANCING_ON ) && !defined( USE_LEGACY_LIGHTMAPS )
				// @diogo: URP passes its Texture2D dynamic lightmap to Texture2DArray lightmap params
				#undef DYNAMICLIGHTMAP_ON
			#endif

			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#define SHADERPASS SHADERPASS_GBUFFER

			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ProbeVolumeVariants.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if ( UNITY_VERSION >= 60030017 && UNITY_VERSION < 60040000 ) || ( UNITY_VERSION >= 60040010 )
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/GBufferOutputFormat.hlsl"
			#endif

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined( UNITY_INSTANCING_ENABLED ) && defined( ASE_INSTANCED_TERRAIN ) && ( defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL) || defined(_INSTANCEDTERRAINNORMALS_PIXEL) )
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#define ASE_NEEDS_TEXTURE_COORDINATES1


			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					float4 texcoord1 : TEXCOORD1;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					float4 texcoord2 : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				half3 normalWS : TEXCOORD1;
				float4 tangentWS : TEXCOORD2; // holds terrainUV ifdef ENABLE_TERRAIN_PERPIXEL_NORMAL
				float4 lightmapUVOrVertexSH : TEXCOORD3;
				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					half4 fogFactorAndVertexLight : TEXCOORD4;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD5;
				#endif
				#if defined(USE_APV_PROBE_OCCLUSION)
					float4 probeOcclusion : TEXCOORD6;
				#endif
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _TextureSample2;
			sampler2D _TextureSample0;
			sampler2D _COATOFARMSMASK;


			#if ( UNITY_VERSION >= 60010000 )
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/GBufferOutput.hlsl"
			#else
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"
			#endif

			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				output.ase_texcoord7.xy = input.texcoord.xy;
				output.ase_texcoord7.zw = input.texcoord1.xy;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;
				input.tangentOS = input.tangentOS;

				#ifdef ASE_CUSTOM_MOTION_VECTOR
					// Declared so the Motion Vector output port surfaces on the master node; only consumed by the motion vector passes.
					float3 aseCustomMotionVector = float3(0, 0, 0);
				#endif

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( input.normalOS, input.tangentOS );

				OUTPUT_LIGHTMAP_UV(input.texcoord1, unity_LightmapST, output.lightmapUVOrVertexSH.xy);
				#if defined(DYNAMICLIGHTMAP_ON)
					output.dynamicLightmapUV.xy = input.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				OUTPUT_SH4(vertexInput.positionWS, normalInput.normalWS.xyz, GetWorldSpaceNormalizeViewDir(vertexInput.positionWS), output.lightmapUVOrVertexSH.xyz, output.probeOcclusion);

				#if defined(ASE_FOG) || defined(_ADDITIONAL_LIGHTS_VERTEX)
					output.fogFactorAndVertexLight = 0;
					#if defined(ASE_FOG) && !defined(_FOG_FRAGMENT)
						// @diogo: no fog applied in GBuffer
					#endif
					#ifdef _ADDITIONAL_LIGHTS_VERTEX
						half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );
						output.fogFactorAndVertexLight.yzw = vertexLight;
					#endif
				#endif

				output.positionCS = ASE_ADJUST_CLIP_POSITION( vertexInput.positionCS );
				output.positionWS = vertexInput.positionWS;
				output.normalWS = normalInput.normalWS;
				output.tangentWS = float4( normalInput.tangentWS, ( input.tangentOS.w > 0.0 ? 1.0 : -1.0 ) * GetOddNegativeScale() );

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					output.tangentWS.zw = input.texcoord.xy;
					output.tangentWS.xy = input.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					float4 texcoord1 : TEXCOORD1;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					float4 texcoord2 : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				output.texcoord = input.texcoord;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					output.texcoord1 = input.texcoord1;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					output.texcoord2 = input.texcoord2;
				#endif
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				output.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				#if defined(LIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES1)
					output.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON) || defined(ASE_NEEDS_TEXTURE_COORDINATES2)
					output.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				#endif
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

		#if ( UNITY_VERSION >= 60010000 )
			GBufferFragOutput frag ( PackedVaryings input
		#else
			FragmentOutput frag ( PackedVaryings input
		#endif
								#if defined( ASE_WRITE_DEPTH )
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					float4 shadowCoord = TransformWorldToShadowCoord( input.positionWS );
				#else
					float4 shadowCoord = float4(0, 0, 0, 0);
				#endif

				// @diogo: mikktspace compliant
				float renormFactor = 1.0 / max( FLT_MIN, length( input.normalWS ) );

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( PositionWS );
				float3 ViewDirWS = GetWorldSpaceNormalizeViewDir( PositionWS );
				float4 ShadowCoord = shadowCoord;
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;
				float4 ScreenPos = ComputeScreenPos( ClipPos );
				float3 TangentWS = input.tangentWS.xyz * renormFactor;
				float3 BitangentWS = cross( input.normalWS, input.tangentWS.xyz ) * input.tangentWS.w * renormFactor;
				float3 NormalWS = input.normalWS * renormFactor;

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					float2 sampleCoords = (input.tangentWS.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					NormalWS = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					TangentWS = -cross(GetObjectToWorldMatrix()._13_23_33, NormalWS);
					BitangentWS = cross(NormalWS, -TangentWS);
				#endif

				float2 uv_TextureSample2 = input.ase_texcoord7.xy * _TextureSample2_ST.xy + _TextureSample2_ST.zw;
				float4 tex2DNode199 = tex2D( _TextureSample2, uv_TextureSample2 );
				float4 color638 = IsGammaSpace() ? float4( 0.4980392, 1, 1, 1 ) : float4( 0.2122307, 1, 1, 1 );
				float2 uv_TextureSample0 = input.ase_texcoord7.xy * _TextureSample0_ST.xy + _TextureSample0_ST.zw;
				float4 tex2DNode617 = tex2D( _TextureSample0, uv_TextureSample0 );
				float4 lerpResult189 = lerp( float4( 0,0,0,0 ) , ( tex2DNode199 * _FEATHERS2COLOR ) , saturate( ( 1.0 - ( ( distance( color638.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color637 = IsGammaSpace() ? float4( 0.4980392, 1, 0.4980392, 1 ) : float4( 0.2122307, 1, 0.2122307, 1 );
				float4 lerpResult184 = lerp( lerpResult189 , ( tex2DNode199 * _FEATHERS1COLOR ) , saturate( ( 1.0 - ( ( distance( color637.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color636 = IsGammaSpace() ? float4( 0, 0, 1, 1 ) : float4( 0, 0, 1, 1 );
				float4 lerpResult598 = lerp( lerpResult184 , ( tex2DNode199 * _CLOTH4COLOR ) , saturate( ( 1.0 - ( ( distance( color636.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color635 = IsGammaSpace() ? float4( 0, 1, 1, 1 ) : float4( 0, 1, 1, 1 );
				float4 lerpResult171 = lerp( lerpResult598 , ( tex2DNode199 * _CLOTH3COLOR ) , saturate( ( 1.0 - ( ( distance( color635.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color634 = IsGammaSpace() ? float4( 0, 1, 0, 1 ) : float4( 0, 1, 0, 1 );
				float4 lerpResult178 = lerp( lerpResult171 , ( tex2DNode199 * _CLOTH2COLOR ) , saturate( ( 1.0 - ( ( distance( color634.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color633 = IsGammaSpace() ? float4( 0, 0.4980392, 0, 1 ) : float4( 0, 0.2122307, 0, 1 );
				float4 lerpResult173 = lerp( lerpResult178 , ( tex2DNode199 * _CLOTH1COLOR ) , saturate( ( 1.0 - ( ( distance( color633.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color632 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float temp_output_599_0 = saturate( ( 1.0 - ( ( distance( color632.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult602 = lerp( lerpResult173 , ( tex2DNode199 * _LEATHER4COLOR ) , temp_output_599_0);
				float4 color631 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float temp_output_165_0 = saturate( ( 1.0 - ( ( distance( color631.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult160 = lerp( lerpResult602 , ( tex2DNode199 * _LEATHER3COLOR ) , temp_output_165_0);
				float4 color630 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float temp_output_158_0 = saturate( ( 1.0 - ( ( distance( color630.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult167 = lerp( lerpResult160 , ( tex2DNode199 * _LEATHER2COLOR ) , temp_output_158_0);
				float4 color629 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float temp_output_157_0 = saturate( ( 1.0 - ( ( distance( color629.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult162 = lerp( lerpResult167 , ( tex2DNode199 * _LEATHER1COLOR ) , temp_output_157_0);
				float4 color628 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float temp_output_603_0 = saturate( ( 1.0 - ( ( distance( color628.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult606 = lerp( lerpResult162 , ( tex2DNode199 * _METAL4COLOR ) , temp_output_603_0);
				float4 color627 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float temp_output_117_0 = saturate( ( 1.0 - ( ( distance( color627.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult118 = lerp( lerpResult606 , ( tex2DNode199 * _METAL3COLOR ) , temp_output_117_0);
				float4 color625 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float temp_output_127_0 = saturate( ( 1.0 - ( ( distance( color625.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult128 = lerp( lerpResult118 , ( tex2DNode199 * _METAL2COLOR ) , temp_output_127_0);
				float4 color624 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float temp_output_123_0 = saturate( ( 1.0 - ( ( distance( color624.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult122 = lerp( lerpResult128 , ( tex2DNode199 * _METAL1COLOR ) , temp_output_123_0);
				float4 color623 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float temp_output_145_0 = saturate( ( 1.0 - ( ( distance( color623.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult148 = lerp( lerpResult122 , ( tex2DNode199 * _OTHERCOLOR ) , temp_output_145_0);
				float4 color622 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float temp_output_149_0 = saturate( ( 1.0 - ( ( distance( color622.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult151 = lerp( lerpResult148 , ( tex2DNode199 * _LIPSCOLOR ) , temp_output_149_0);
				float4 color621 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float temp_output_150_0 = saturate( ( 1.0 - ( ( distance( color621.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult153 = lerp( lerpResult151 , ( tex2DNode199 * _SCLERACOLOR ) , temp_output_150_0);
				float4 color618 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float temp_output_71_0 = saturate( ( 1.0 - ( ( distance( color618.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult73 = lerp( lerpResult153 , ( tex2DNode199 * _EYESCOLOR ) , temp_output_71_0);
				float4 color619 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float temp_output_67_0 = saturate( ( 1.0 - ( ( distance( color619.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult69 = lerp( lerpResult73 , ( tex2DNode199 * _HAIRCOLOR ) , temp_output_67_0);
				float4 color620 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float temp_output_63_0 = saturate( ( 1.0 - ( ( distance( color620.rgb , tex2DNode617.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) );
				float4 lerpResult62 = lerp( lerpResult69 , ( tex2DNode199 * _SKINCOLOR ) , temp_output_63_0);
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord7.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g142 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4( 0, 0, 0, 0 ) : float4( 0, 0, 0, 0 );
				float4 temp_output_2_0_g142 = color25;
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g142 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g142 , saturate( ( ( distance( temp_output_1_0_g142 , temp_output_2_0_g142 ) - _Vector0.x ) / max( _Vector0.y, 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult62 , lerpResult21_g142 , ( 1.0 - temp_output_9_0 ));
				
				float toggleSwitch584 = ( float )0;
				if( _MetalicOn )
				{
					float lerpResult610 = lerp( 0.0 , _METAL4METALLIC , temp_output_603_0);
					float lerpResult315 = lerp( lerpResult610 , _METAL3METALLIC , temp_output_117_0);
					float lerpResult319 = lerp( lerpResult315 , _METAL2METALLIC , temp_output_127_0);
					float lerpResult316 = lerp( lerpResult319 , _METAL1METALLIC , temp_output_123_0);
					toggleSwitch584 = lerpResult316;
				}
				else
				{
					toggleSwitch584 = 0.0;
				}
				
				float toggleSwitch585 = ( float )0;
				if( _SmoothnessOn )
				{
					float lerpResult612 = lerp( 0.0 , _LEATHER4SMOOTHNESS , temp_output_599_0);
					float lerpResult336 = lerp( lerpResult612 , _LEATHER3SMOOTHNESS , temp_output_165_0);
					float lerpResult332 = lerp( lerpResult336 , _LEATHER2SMOOTHNESS , temp_output_158_0);
					float lerpResult334 = lerp( lerpResult332 , _LEATHER1SMOOTHNESS , temp_output_157_0);
					float lerpResult608 = lerp( lerpResult334 , _METAL4SMOOTHNESS , temp_output_603_0);
					float lerpResult327 = lerp( lerpResult608 , _METAL3SMOOTHNESS , temp_output_117_0);
					float lerpResult331 = lerp( lerpResult327 , _METAL2SMOOTHNESS , temp_output_127_0);
					float lerpResult328 = lerp( lerpResult331 , _METAL1SMOOTHNESS , temp_output_123_0);
					float lerpResult321 = lerp( lerpResult328 , _OTHERSMOOTHNESS , temp_output_145_0);
					float lerpResult325 = lerp( lerpResult321 , _LIPSSMOOTHNESS , temp_output_149_0);
					float lerpResult322 = lerp( lerpResult325 , _SCLERASMOOTHNESS , temp_output_150_0);
					float lerpResult306 = lerp( lerpResult322 , _EYESSMOOTHNESS , temp_output_71_0);
					float lerpResult304 = lerp( lerpResult306 , _HAIRSMOOTHNESS , temp_output_67_0);
					float lerpResult302 = lerp( lerpResult304 , _SKINSMOOTHNESS , temp_output_63_0);
					toggleSwitch585 = lerpResult302;
				}
				else
				{
					toggleSwitch585 = 0.0;
				}
				

				float3 BaseColor = lerpResult64.rgb;
				float3 Normal = float3(0, 0, 1);
				float3 Specular = 0.5;
				float Metallic = toggleSwitch584;
				float Smoothness = toggleSwitch585;
				float Occlusion =  (1.0 + ( _OCCLUSION - 0.0 ) * ( 0.5 - 1.0 ) / ( 1.0 - 0.0 ) );
				float3 Emission = 0;
				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
					float AlphaClipThresholdShadow = 0.5;
				#endif
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#if defined( _ALPHATEST_ON )
					AlphaDiscard( Alpha, AlphaClipThreshold );
				#endif

				#if defined(MAIN_LIGHT_CALCULATE_SHADOWS) && defined(ASE_CHANGES_WORLD_POS)
					ShadowCoord = TransformWorldToShadowCoord( PositionWS );
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = PositionWS;
				inputData.positionCS = input.positionCS;
				inputData.normalizedScreenSpaceUV = ScreenPosNorm.xy;
				inputData.shadowCoord = ShadowCoord;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
						inputData.normalWS = TransformTangentToWorld(Normal, half3x3( TangentWS, BitangentWS, NormalWS ));
					#elif _NORMAL_DROPOFF_OS
						inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = NormalWS;
				#endif

				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( ViewDirWS );

				#ifdef ASE_FOG
					// @diogo: no fog applied in GBuffer
				#endif
				#ifdef _ADDITIONAL_LIGHTS_VERTEX
					inputData.vertexLighting = input.fogFactorAndVertexLight.yzw;
				#endif
				#if ( UNITY_VERSION >= 60070000 )
					inputData.preExposureMultiplier = GetPreExposureMultiplier();
				#endif

				#if defined( ENABLE_TERRAIN_PERPIXEL_NORMAL )
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = input.lightmapUVOrVertexSH.xyz;
				#endif

				#if ( UNITY_VERSION >= 60070000 )
					GIParams giParams = (GIParams)0;
					#if defined(LIGHTMAP_ON)
						giParams.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						giParams.vertexSH = SH;
					#endif
					#if defined(DYNAMICLIGHTMAP_ON)
						giParams.dynamicLightmapUV = input.dynamicLightmapUV.xy;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						giParams.vertexProbeOcclusion = input.probeOcclusion;
					#endif
					giParams.positionWS = inputData.positionWS;
					giParams.normalWS = inputData.normalWS;
					giParams.viewDirWS = inputData.viewDirectionWS;
					giParams.positionSS = input.positionCS.xy;
					InitializeBakedGI( giParams, inputData.bakedGI, inputData.shadowMask );
				#elif defined(_SCREEN_SPACE_IRRADIANCE) && ( UNITY_VERSION >= 60030000 )
					#if ( UNITY_VERSION >= 60060000 )
						inputData.bakedGI = SAMPLE_GI(_ScreenSpaceIrradiance, input.positionCS.xy, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI(_ScreenSpaceIrradiance, input.positionCS.xy);
					#endif
				#elif defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, input.dynamicLightmapUV.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#elif !defined(LIGHTMAP_ON) && (defined(PROBE_VOLUMES_L1) || defined(PROBE_VOLUMES_L2))
					inputData.bakedGI = SAMPLE_GI( SH, GetAbsolutePositionWS(inputData.positionWS),
						inputData.normalWS,
						inputData.viewDirectionWS,
						input.positionCS.xy,
						input.probeOcclusion,
						inputData.shadowMask);
				#else
					inputData.bakedGI = SAMPLE_GI(input.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
					inputData.shadowMask = SAMPLE_SHADOWMASK(input.lightmapUVOrVertexSH.xy);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = input.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = input.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
					#if defined(USE_APV_PROBE_OCCLUSION)
						inputData.probeOcclusion = input.probeOcclusion;
					#endif
					SETUP_DEBUG_TEXTURE_DATA_NO_UV( inputData );
				#endif

				#ifdef _DBUFFER
					ApplyDecal(input.positionCS,
						BaseColor,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData(BaseColor, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				ASE_LIGHT_ACCUM4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);

			#if ( UNITY_VERSION >= 60010000 )
				color.rgb = GlobalIllumination(brdfData, (BRDFData)0, 0,
                              inputData.bakedGI, Occlusion, inputData.positionWS,
                              inputData.normalWS, inputData.viewDirectionWS, inputData.normalizedScreenSpaceUV);
			#else
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
			#endif

				color.a = Alpha;

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

			#if ( UNITY_VERSION >= 60070000 )
				return PackGBuffersBRDFData(brdfData, inputData, Smoothness, ClampExposed(inputData.preExposureMultiplier * (Emission + color.rgb)), Occlusion);
			#elif ( UNITY_VERSION >= 60010000 )
				return PackGBuffersBRDFData(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			#else
				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#pragma multi_compile_instancing
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction(Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				output.positionCS = ASE_ADJUST_CLIP_POSITION( vertexInput.positionCS );
				output.positionWS = vertexInput.positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag( PackedVaryings input
				#if defined( ASE_WRITE_DEPTH )
				,out float outputDepth : ASE_SV_DEPTH
				#endif
				 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( PositionWS );
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;

				

				surfaceDescription.Alpha = 1;
				#if defined( _ALPHATEST_ON )
					surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(surfaceDescription.Alpha - surfaceDescription.AlphaClipThreshold);
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

				return half4( _ObjectId, _PassValue, 1.0, 1.0 );
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#pragma multi_compile_instancing
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output;
				ZERO_INITIALIZE(PackedVaryings, output);

				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				input.normalOS = input.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				output.positionCS = ASE_ADJUST_CLIP_POSITION( vertexInput.positionCS );
				output.positionWS = vertexInput.positionWS;
				return output;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 positionOS : INTERNALTESSPOS;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( Attributes input )
			{
				VertexControl output;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				output.positionOS = input.positionOS;
				output.normalOS = input.normalOS;
				output.tangentOS = input.tangentOS;
				
				return output;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> input)
			{
				TessellationFactors output;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(input[0].positionOS, input[1].positionOS, input[2].positionOS, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				output.edge[0] = tf.x; output.edge[1] = tf.y; output.edge[2] = tf.z; output.inside = tf.w;
				return output;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			PackedVaryings DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				Attributes output = (Attributes) 0;
				output.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				output.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				output.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = output.positionOS.xyz - patch[i].normalOS * (dot(output.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				output.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * output.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], output);
				return VertexFunction(output);
			}
			#else
			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}
			#endif

			half4 frag( PackedVaryings input
				#if defined( ASE_WRITE_DEPTH )
				,out float outputDepth : ASE_SV_DEPTH
				#endif
				 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( PositionWS );
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;

				

				surfaceDescription.Alpha = 1;
				#if defined( _ALPHATEST_ON )
					surfaceDescription.AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(surfaceDescription.Alpha - surfaceDescription.AlphaClipThreshold);
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

				return unity_SelectionID;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "MotionVectors"
			Tags { "LightMode"="MotionVectors" }

			ColorMask RG

			HLSLPROGRAM

			#define ASE_GEOMETRY
			#define _ALPHATEST_ON
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_SCREEN_SPACE_REFLECTIONS
			#define ASE_TIME_BASED_MOTION_VECTORS
			#pragma multi_compile _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define ASE_VERSION 19914
			#define ASE_SRP_VERSION 170300


			#pragma vertex vert
			#pragma fragment frag

			#if defined( _SPECULAR_SETUP ) && defined( ASE_LIGHTING_SIMPLE )
				#if defined( _SPECULARHIGHLIGHTS_OFF )
					#undef _SPECULAR_COLOR
				#else
					#define _SPECULAR_COLOR
				#endif
			#endif

            #define SHADERPASS SHADERPASS_MOTION_VECTORS

            #include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DOTS.hlsl"
			#include_with_pragmas "Packages/com.unity.render-pipelines.universal/ShaderLibrary/RenderingLayers.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
		    #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
            #include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/DebugMipmapStreamingMacros.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
		    #include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
				#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
			#endif

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MotionVectorsCommon.hlsl"

			

			#if defined(ASE_WRITE_DEPTH_CONSERVATIVE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			#if ( UNITY_VERSION < 60010000 )
				#define APPLICATION_SPACE_WARP_MOTION APLICATION_SPACE_WARP_MOTION
			#endif

			struct Attributes
			{
				float4 positionOS : POSITION;
				float3 positionOld : TEXCOORD4;
				#if _ADD_PRECOMPUTED_VELOCITY
					float3 alembicMotionVector : TEXCOORD5;
				#endif
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 positionCSNoJitter : TEXCOORD0;
				float4 previousPositionCSNoJitter : TEXCOORD1;
				float3 positionWS : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample2_ST;
			float4 _COATOFARMSCOLOR;
			float4 _HAIRCOLOR;
			float4 _EYESCOLOR;
			float4 _SCLERACOLOR;
			float4 _LIPSCOLOR;
			float4 _OTHERCOLOR;
			float4 _METAL1COLOR;
			float4 _METAL2COLOR;
			float4 _METAL3COLOR;
			float4 _METAL4COLOR;
			float4 _SKINCOLOR;
			float4 _LEATHER2COLOR;
			float4 _LEATHER3COLOR;
			float4 _LEATHER4COLOR;
			float4 _CLOTH1COLOR;
			float4 _CLOTH2COLOR;
			float4 _CLOTH3COLOR;
			float4 _CLOTH4COLOR;
			float4 _FEATHERS1COLOR;
			float4 _TextureSample0_ST;
			float4 _FEATHERS2COLOR;
			float4 _LEATHER1COLOR;
			float _METAL2SMOOTHNESS;
			float _METAL1SMOOTHNESS;
			float _OTHERSMOOTHNESS;
			float _HAIRSMOOTHNESS;
			float _SCLERASMOOTHNESS;
			float _EYESSMOOTHNESS;
			float _METAL3SMOOTHNESS;
			float _LIPSSMOOTHNESS;
			float _METAL4SMOOTHNESS;
			float _METAL1METALLIC;
			float _LEATHER2SMOOTHNESS;
			float _LEATHER3SMOOTHNESS;
			float _LEATHER4SMOOTHNESS;
			float _SmoothnessOn;
			float _METAL2METALLIC;
			float _METAL3METALLIC;
			float _METAL4METALLIC;
			float _MetalicOn;
			float _SKINSMOOTHNESS;
			float _LEATHER1SMOOTHNESS;
			float _OCCLUSION;
			float _AlphaClip;
			float _Cutoff;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			UNITY_TEXTURE_STREAMING_DEBUG_VARS;
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			
			// Applies the graph's vertex stage at a given time so the motion vector pass can
			// evaluate the current frame and re-evaluate the previous frame (procedural / time-based animation).
			Attributes ASEApplyVertexModification( Attributes input, float3 timeParameters, inout PackedVaryings output, out float3 customMotionVector  )
			{
				// @diogo: local copy shadows the global; DXC rejects writes to globals
				float4 _TimeParameters = float4( timeParameters, 0 );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = input.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					input.positionOS.xyz = vertexValue;
				#else
					input.positionOS.xyz += vertexValue;
				#endif

				customMotionVector = float3(0, 0, 0);

				return input;
			}

			PackedVaryings VertexFunction( Attributes input )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				Attributes defaultInput = input;
				float3 currentMotionVector;
				input = ASEApplyVertexModification( input, _TimeParameters.xyz, output, currentMotionVector );

				VertexPositionInputs vertexInput = GetVertexPositionInputs( input.positionOS.xyz );

				#if defined(APPLICATION_SPACE_WARP_MOTION)
					float4 positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, input.positionOS));
					float4 positionCS = positionCSNoJitter;
				#else
					float4 positionCS = vertexInput.positionCS;
					float4 positionCSNoJitter = mul(_NonJitteredViewProjMatrix, mul(UNITY_MATRIX_M, input.positionOS));
				#endif

				// Custom output and automatic time-based motion are mutually exclusive.
				// @diogo: like SG, only re-run the vertex graph when skinned or time-based, else reuse the deformed position
				float3 prevPositionOS = input.positionOS.xyz;
				#ifdef ASE_TIME_BASED_MOTION_VECTORS
					const bool applyDeformation = true;
				#else
					const bool applyDeformation = ( unity_MotionVectorsParams.x == 1 );
				#endif
				if ( applyDeformation )
				{
					Attributes prevInput = defaultInput;
					prevInput.positionOS.xyz = ( unity_MotionVectorsParams.x == 1 ) ? input.positionOld : defaultInput.positionOS.xyz;
					PackedVaryings prevOutput = (PackedVaryings)0;
					float3 prevMotionVector;
					#ifdef ASE_TIME_BASED_MOTION_VECTORS
						prevInput = ASEApplyVertexModification( prevInput, _LastTimeParameters.xyz, prevOutput, prevMotionVector );
					#else
						prevInput = ASEApplyVertexModification( prevInput, _TimeParameters.xyz, prevOutput, prevMotionVector );
					#endif
					prevPositionOS = prevInput.positionOS.xyz;
				}
				#if defined(ASE_CUSTOM_MOTION_VECTOR)
					prevPositionOS -= currentMotionVector;
				#endif
				#if _ADD_PRECOMPUTED_VELOCITY
					prevPositionOS -= input.alembicMotionVector;
				#endif
				float4 previousPositionCSNoJitter = mul( _PrevViewProjMatrix, mul( UNITY_PREV_MATRIX_M, float4( prevPositionOS, 1 ) ) );

				output.positionCS = ASE_ADJUST_CLIP_POSITION( positionCS );
				output.positionCSNoJitter = ASE_ADJUST_CLIP_POSITION( positionCSNoJitter );
				output.previousPositionCSNoJitter = ASE_ADJUST_CLIP_POSITION( previousPositionCSNoJitter );
				output.positionWS = vertexInput.positionWS;

				return output;
			}

			PackedVaryings vert ( Attributes input )
			{
				return VertexFunction( input );
			}

			half4 frag(	PackedVaryings input
				#if defined( ASE_WRITE_DEPTH )
				,out float outputDepth : ASE_SV_DEPTH
				#endif
				 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( input );

				float3 PositionWS = input.positionWS;
				float3 PositionRWS = GetCameraRelativePositionWS( PositionWS );
				float4 ScreenPosNorm = float4( GetNormalizedScreenSpaceUV( input.positionCS ), input.positionCS.zw );
				float4 ClipPos = ComputeClipSpacePosition( ScreenPosNorm.xy, input.positionCS.z ) * input.positionCS.w;

				

				float Alpha = 1;
				#if defined( _ALPHATEST_ON )
					float AlphaClipThreshold = _Cutoff;
				#endif

				#if defined( ASE_WRITE_DEPTH )
					input.positionCS.z = input.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(ASE_CHANGES_WORLD_POS)
					float3 positionOS = mul( GetWorldToObjectMatrix(),  float4( PositionWS, 1.0 ) ).xyz;
					float3 previousPositionWS = mul( GetPrevObjectToWorldMatrix(),  float4( positionOS, 1.0 ) ).xyz;
					input.positionCSNoJitter = mul( _NonJitteredViewProjMatrix, float4( PositionWS, 1.0 ) );
					input.previousPositionCSNoJitter = mul( _PrevViewProjMatrix, float4( previousPositionWS, 1.0 ) );
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( input.positionCS );
				#endif

				#if defined( ASE_WRITE_DEPTH )
					outputDepth = input.positionCS.z;
				#endif

				#if defined(APPLICATION_SPACE_WARP_MOTION)
					return float4( CalcAswNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 1 );
				#else
					return float4( CalcNdcMotionVectorFromCsPositions( input.positionCSNoJitter, input.previousPositionCSNoJitter ), 0, 0 );
				#endif
			}
			ENDHLSL
		}

	
	}
	

	

	CustomEditor "UnityEditor.ShaderGraphLitGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback "Hidden/InternalErrorShader"
}
/*ASEBEGIN
Version=19914
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":647,"pos":[-15561.67,102.9185],"params":["Inherit","False","483.4482","271.3363","Comment","1","199","","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":212,"pos":[-14813.92,104.0023],"params":["Inherit","False","1271.642","720.5787","Comment","8","184","186","189","637","183","226","225","638","FEATHERS COLORS","0.735849,0.7152051,0.3158597,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":648,"pos":[-15523.26,583.142],"params":["Inherit","False","439.4697","254.3918","Comment","1","617","","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":208,"pos":[-13458.26,101.9824],"params":["Inherit","False","2359.399","774.7212","Comment","20","596","598","595","636","597","173","168","178","175","633","169","172","171","209","177","210","176","634","635","211","CLOTH COLORS","0.4690726,0.7830189,0.47128,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":345,"pos":[-11038.79,1619.041],"params":["Inherit","False","2488.125","194.1752","Comment","8","334","332","333","335","336","337","611","612","LEATHER SMOOTHNESS","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":204,"pos":[-10950.96,81.85144],"params":["Inherit","False","2539.317","705.8575","Comment","16","601","602","600","162","164","167","160","161","201","202","166","157","203","158","165","599","LEATHER COLORS","0.7735849,0.5371538,0.1788003,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":194,"pos":[-8107.391,78.99294],"params":["Inherit","False","2541.828","775.4952","Comment","20","606","605","604","603","122","128","119","118","195","120","123","196","126","127","197","117","628","627","625","624","METAL COLORS","0.259434,0.8569208,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":346,"pos":[-7959.562,1650.51],"params":["Inherit","False","2395.888","216.9493","Comment","8","328","330","331","326","327","329","608","607","METAL SMOOTHNESS","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":190,"pos":[-4960,96],"params":["Inherit","False","1932.122","803.2549","Comment","15","150","149","145","153","154","151","191","155","148","192","156","193","621","622","623","LIPS - SCARS - SCLERA COLORS","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":347,"pos":[-4730.452,1597.091],"params":["Inherit","False","1768.499","211.4459","Comment","6","324","320","325","322","321","323","LIPS - SCARS - SCLERA SMOOTHNESS","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":354,"pos":[-7949.042,1067.135],"params":["Inherit","False","2384.88","225.2048","Comment","8","316","318","319","315","314","317","609","610","METAL METALLIC","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":102,"pos":[-2823.131,121.464],"params":["Inherit","False","2291.459","750.2154","Comment","16","63","67","71","62","581","69","41","73","582","583","75","74","618","619","620","649","SKIN - HAIR - EYES COLORS","1,0,0,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":313,"pos":[-2237.965,1601.742],"params":["Inherit","False","1768.499","211.4464","Comment","6","307","302","306","305","303","304","SKIN - EYES - HAIR SMOOTHNESS","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":24,"pos":[-1812.858,-1400.5],"params":["Inherit","False","1262.249","589.4722","","7","16","18","26","25","17","9","10","COAT OF ARMS","1,0,0.7651567,1","0","0"]}
{"type":"AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor","id":199,"pos":[-15462.87,148.1635],"params":["Inherit","True","Property","_TextureSample2","Texture Sample 2","44","1","[HideInInspector]","Create","True","0","0","0","False","0","False","","-1","f7390e40451b1494fbe67eb39e53d4ec","f7390e40451b1494fbe67eb39e53d4ec","True","0","False","white","Auto","False","Object","-1","Auto","Texture2D","False","8","0","SAMPLER2D","","False","1","FLOAT2","0,0","False","2","FLOAT","0","False","3","FLOAT2","0,0","False","4","FLOAT2","0,0","False","5","FLOAT","1","False","6","FLOAT","0","False","7","SAMPLERSTATE","","False","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":225,"pos":[-14738.24,165.3038],"params":["Inherit","False","Property","_FEATHERS2COLOR","FEATHERS 2 COLOR","37","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.6792453,0,0,0","0.6792453,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor","id":617,"pos":[-15449.58,618.5649],"params":["Inherit","True","Property","_TextureSample0","Texture Sample 0","43","1","[HideInInspector]","Create","True","0","0","0","False","0","False","","-1","6bb85a5d9f66498428d452f1d30c189c","6bb85a5d9f66498428d452f1d30c189c","True","0","False","white","Auto","False","Object","-1","Auto","Texture2D","False","8","0","SAMPLER2D","","False","1","FLOAT2","0,0","False","2","FLOAT","0","False","3","FLOAT2","0,0","False","4","FLOAT2","0,0","False","5","FLOAT","1","False","6","FLOAT","0","False","7","SAMPLERSTATE","","False","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":638,"pos":[-14748.09,651.2271],"params":["Inherit","False","Constant","_Color27","Color 27","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,1,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":180,"pos":[-14504.2,631.4867],"params":["Inherit","True","Color Mask","-1","","112","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":183,"pos":[-14474.64,146.8632],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":226,"pos":[-14193.24,161.3038],"params":["Inherit","False","Property","_FEATHERS1COLOR","FEATHERS 1 COLOR","36","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.7735849,0.492613,0.492613,0","0.7735849,0.492613,0.492613,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":637,"pos":[-14210.09,644.2271],"params":["Inherit","False","Constant","_Color26","Color 26","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,1,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":179,"pos":[-13971.12,629.8313],"params":["Inherit","True","Color Mask","-1","","113","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":186,"pos":[-13897.83,151.9253],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":189,"pos":[-14291.23,350.3367],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":595,"pos":[-13418.15,197.0357],"params":["Inherit","False","Property","_CLOTH4COLOR","CLOTH 4 COLOR","35","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.2011392,0.3773585,0.3739074,0","0.9056604,0.6815338,0.4229263,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":636,"pos":[-13458.59,672.1999],"params":["Inherit","False","Constant","_Color25","Color 25","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":211,"pos":[-12946.7,169.5253],"params":["Inherit","False","Property","_CLOTH3COLOR","CLOTH 3 COLOR","34","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.3962264,0.3391397,0.2710039,0","0.9056604,0.6815338,0.4229263,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":635,"pos":[-12902.18,650.4863],"params":["Inherit","False","Constant","_Color24","Color 24","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,1,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":632,"pos":[-10842.41,668.59],"params":["Inherit","False","Constant","_Color21","Color 21","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0.4980392,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":597,"pos":[-13137.79,171.5876],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":596,"pos":[-13182.24,635.7042],"params":["Inherit","True","Color Mask","-1","","114","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":184,"pos":[-13714.46,359.6518],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":598,"pos":[-12966.97,398.9717],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":210,"pos":[-12327.88,177.5926],"params":["Inherit","False","Property","_CLOTH2COLOR","CLOTH 2 COLOR","33","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,0","1,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":631,"pos":[-10257.41,661.59],"params":["Inherit","False","Constant","_Color20","Color 20","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,1,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":611,"pos":[-10859.22,1715.814],"params":["Inherit","False","Property","_LEATHER4SMOOTHNESS","LEATHER 4 SMOOTHNESS","31","0","Create","True","0","0","0","False","0","False","Object","-1","","0.3","0.3","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":634,"pos":[-12297.7,654.3358],"params":["Inherit","False","Constant","_Color23","Color 23","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,1,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":177,"pos":[-12655.9,151.9825],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":176,"pos":[-12676.41,635.1213],"params":["Inherit","True","Color Mask","-1","","117","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":599,"pos":[-10571.77,640.5661],"params":["Inherit","True","Color Mask","-1","","118","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":630,"pos":[-9602.412,660.59],"params":["Inherit","False","Constant","_Color19","Color 19","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":172,"pos":[-12043.04,154.3614],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":337,"pos":[-10355.01,1726.238],"params":["Inherit","False","Property","_LEATHER3SMOOTHNESS","LEATHER 3 SMOOTHNESS","29","0","Create","True","0","0","0","False","0","False","Object","-1","","0.3","0.3","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":171,"pos":[-12480.08,372.3667],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":612,"pos":[-10521.99,1677.05],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":633,"pos":[-11771.7,656.3358],"params":["Inherit","False","Constant","_Color22","Color 22","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0.4980392,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":169,"pos":[-12068.59,637.2324],"params":["Inherit","True","Color Mask","-1","","124","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":209,"pos":[-11733.9,176.3902],"params":["Inherit","False","Property","_CLOTH1COLOR","CLOTH 1 COLOR","32","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0,0.1792453,0.05062231,0","0,0.1142961,0.1698113,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":165,"pos":[-9991.497,642.3751],"params":["Inherit","True","Color Mask","-1","","125","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":336,"pos":[-10044.88,1676.374],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":178,"pos":[-11859.63,357.8348],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":158,"pos":[-9334.879,645.8863],"params":["Inherit","True","Color Mask","-1","","129","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":600,"pos":[-10810.29,159.6755],"params":["Inherit","False","Property","_LEATHER4COLOR","LEATHER 4 COLOR","30","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.1698113,0.04637412,0.02963688,1","0.1698113,0.04637412,0.02963688,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":175,"pos":[-11466.22,159.4234],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":629,"pos":[-9078.412,661.59],"params":["Inherit","False","Constant","_Color18","Color 18","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0.4980392,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":335,"pos":[-9711.607,1699.418],"params":["Inherit","False","Property","_LEATHER2SMOOTHNESS","LEATHER 2 SMOOTHNESS","27","0","Create","True","0","0","0","False","0","False","Object","-1","","0.3","0.3","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":168,"pos":[-11499.91,637.3292],"params":["Inherit","True","Color Mask","-1","","130","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":203,"pos":[-10240.52,166.8846],"params":["Inherit","False","Property","_LEATHER3COLOR","LEATHER 3 COLOR","28","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.1698113,0.04637412,0.02963688,1","0.1698113,0.04637412,0.02963688,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":333,"pos":[-9129.321,1694.408],"params":["Inherit","False","Property","_LEATHER1SMOOTHNESS","LEATHER 1 SMOOTHNESS","25","0","Create","True","0","0","0","False","0","False","Object","-1","","0.3","0.3","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":601,"pos":[-10543.71,135.0831],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":173,"pos":[-11282.86,367.1498],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":332,"pos":[-9418.603,1677.365],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":157,"pos":[-8837.466,647.3965],"params":["Inherit","True","Color Mask","-1","","131","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":628,"pos":[-7924.997,616.7841],"params":["Inherit","False","Constant","_Color17","Color 17","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0.4980392,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":603,"pos":[-7653.806,601.9574],"params":["Inherit","True","Color Mask","-1","","132","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":202,"pos":[-9649.142,170.2566],"params":["Inherit","False","Property","_LEATHER2COLOR","LEATHER 2 COLOR","26","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4245283,0.190437,0.09011215,1","0.4245283,0.190437,0.09011215,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":602,"pos":[-10373.64,375.2108],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":627,"pos":[-7362.862,629.4504],"params":["Inherit","False","Constant","_Color16","Color 16","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0.4980392,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":607,"pos":[-7882.286,1718.982],"params":["Inherit","False","Property","_METAL4SMOOTHNESS","METAL 4 SMOOTHNESS","23","0","Create","True","0","0","0","False","0","False","Object","-1","","0.7","0.721","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":166,"pos":[-9973.938,142.2922],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":334,"pos":[-8809.511,1671.919],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":608,"pos":[-7560.376,1669.961],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":160,"pos":[-9792.871,357.42],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":201,"pos":[-9059.142,163.2566],"params":["Inherit","False","Property","_LEATHER1COLOR","LEATHER 1 COLOR","24","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4811321,0.2041155,0.08851016,1","0.4811321,0.2041155,0.08851016,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":329,"pos":[-7308.938,1704.062],"params":["Inherit","False","Property","_METAL3SMOOTHNESS","METAL 3 SMOOTHNESS","20","0","Create","True","0","0","0","False","0","False","Object","-1","","0.7","0.721","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":625,"pos":[-6747.165,632.5683],"params":["Inherit","False","Constant","_Color15","Color 15","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":161,"pos":[-9355.825,139.4149],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":117,"pos":[-7107.278,602.937],"params":["Inherit","True","Color Mask","-1","","133","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":327,"pos":[-7007.81,1680.198],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":164,"pos":[-8779.012,144.477],"params":["Inherit","True","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":326,"pos":[-6674.535,1703.243],"params":["Inherit","False","Property","_METAL2SMOOTHNESS","METAL 2 SMOOTHNESS","17","0","Create","True","0","0","0","False","0","False","Object","-1","","0.7","0.7","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":127,"pos":[-6506.706,608.9541],"params":["Inherit","True","Color Mask","-1","","134","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":604,"pos":[-7903.43,147.498],"params":["Inherit","False","Property","_METAL4COLOR","METAL 4 COLOR","21","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4383232,0.4383232,0.4716981,0","0.9528302,0.9528302,0.9528302,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":167,"pos":[-9172.42,355.1142],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":624,"pos":[-6252.165,631.5683],"params":["Inherit","False","Constant","_Color14","Color 14","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":123,"pos":[-5994.941,612.3985],"params":["Inherit","True","Color Mask","-1","","135","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":162,"pos":[-8595.646,352.2031],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":623,"pos":[-4843.854,630.0126],"params":["Inherit","False","Constant","_Color13","Color 13","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,1,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":197,"pos":[-7391.734,147.8021],"params":["Inherit","False","Property","_METAL3COLOR","METAL 3 COLOR","18","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4383232,0.4383232,0.4716981,0","0.9528302,0.9528302,0.9528302,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":331,"pos":[-6381.532,1681.19],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":605,"pos":[-7602.324,138.3599],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":330,"pos":[-6092.251,1698.233],"params":["Inherit","False","Property","_METAL1SMOOTHNESS","METAL 1 SMOOTHNESS","14","0","Create","True","0","0","0","False","0","False","Object","-1","","0.7","0.7","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":328,"pos":[-5784.439,1676.744],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":622,"pos":[-4330.333,630.0126],"params":["Inherit","False","Constant","_Color12","Color 12","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0.4980392,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":196,"pos":[-6727.918,134.2548],"params":["Inherit","False","Property","_METAL2COLOR","METAL 2 COLOR","15","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4674706,0.4677705,0.5188679,0","0.3301887,0.3301887,0.3301887,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":145,"pos":[-4611.063,620.9051],"params":["Inherit","True","Color Mask","-1","","136","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":606,"pos":[-7426.509,358.7441],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":126,"pos":[-7081.164,129.1932],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":323,"pos":[-4683.02,1681.384],"params":["Inherit","False","Property","_OTHERSMOOTHNESS","OTHER SMOOTHNESS","11","0","Create","True","0","0","0","False","0","False","Object","-1","","0.3","0.3","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":118,"pos":[-6905.349,349.5774],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":320,"pos":[-4048.049,1674.59],"params":["Inherit","False","Property","_LIPSSMOOTHNESS","LIPS SMOOTHNESS","9","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4","0.4","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":120,"pos":[-6468.303,131.5722],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":618,"pos":[-2500.176,606.6602],"params":["Inherit","False","Constant","_Color8","Color 8","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":149,"pos":[-4072.347,610.9144],"params":["Inherit","True","Color Mask","-1","","137","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":321,"pos":[-4381.324,1651.545],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":609,"pos":[-7857.733,1115.92],"params":["Inherit","False","Property","_METAL4METALLIC","METAL 4 METALLIC","22","0","Create","True","0","0","0","False","0","False","Object","-1","","0.65","0.903","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":621,"pos":[-3758.865,656.5435],"params":["Inherit","False","Constant","_Color11","Color 11","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0.4980392,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":195,"pos":[-6160.556,103.4147],"params":["Inherit","False","Property","_METAL1COLOR","METAL 1 COLOR","12","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.8792791,0.9922886,1.007606,0","2,0.682353,0.1960784,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":325,"pos":[-3755.044,1652.537],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":317,"pos":[-7296.417,1120.688],"params":["Inherit","False","Property","_METAL3METALLIC","METAL 3 METALLIC","19","0","Create","True","0","0","0","False","0","False","Object","-1","","0.65","0.903","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":193,"pos":[-4827.5,163.607],"params":["Inherit","False","Property","_OTHERCOLOR","OTHER COLOR","10","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.5188679,0.4637216,0.3206212,0","0.8490566,0.5037117,0.3884835,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":128,"pos":[-6284.896,335.0454],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":610,"pos":[-7558.604,1092.056],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":119,"pos":[-5891.489,136.6342],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":71,"pos":[-2208.283,588.9003],"params":["Inherit","True","Color Mask","-1","","138","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":150,"pos":[-3449.225,643.2929],"params":["Inherit","True","Color Mask","-1","","139","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":324,"pos":[-3465.761,1669.58],"params":["Inherit","False","Property","_SCLERASMOOTHNESS","SCLERA SMOOTHNESS","7","0","Create","True","0","0","0","False","0","False","Object","-1","","0.5","0.5","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":156,"pos":[-4549.59,161.4151],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":322,"pos":[-3145.953,1647.091],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":619,"pos":[-1824.985,614.0381],"params":["Inherit","False","Constant","_Color9","Color 9","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0.4980392,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":649,"pos":[-1978.038,693.0198],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":314,"pos":[-6664.014,1119.869],"params":["Inherit","False","Property","_METAL2METALLIC","METAL 2 METALLIC","16","0","Create","True","0","0","0","False","0","False","Object","-1","","0.65","0.65","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":307,"pos":[-2187.965,1679.06],"params":["Inherit","False","Property","_EYESSMOOTHNESS","EYES SMOOTHNESS","3","0","Create","True","0","0","0","False","0","False","Object","-1","","0.7","0.7","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":192,"pos":[-4186.708,110.6664],"params":["Inherit","False","Property","_LIPSCOLOR","LIPS COLOR","8","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.8301887,0.3185886,0.2780349,0","0.8301887,0.3185886,0.2780349,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":315,"pos":[-6997.288,1096.824],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":122,"pos":[-5708.124,344.3604],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":305,"pos":[-1555.562,1679.241],"params":["Inherit","False","Property","_HAIRSMOOTHNESS","HAIR SMOOTHNESS","5","0","Create","True","0","0","0","False","0","False","Object","-1","","0.1","0.622","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":620,"pos":[-1215.816,617.7271],"params":["Inherit","False","Constant","_Color10","Color 10","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":191,"pos":[-3610.708,126.6664],"params":["Inherit","False","Property","_SCLERACOLOR","SCLERA COLOR","6","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.9056604,0.8159487,0.8159487,0","0.9056604,0.8159487,0.8159487,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":67,"pos":[-1574.557,598.8109],"params":["Inherit","True","Color Mask","-1","","140","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":148,"pos":[-4378.708,318.6664],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":318,"pos":[-6082.924,1138.711],"params":["Inherit","False","Property","_METAL1METALLIC","METAL 1 METALLIC","13","0","Create","True","0","0","0","False","0","False","Object","-1","","0.65","0.65","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":319,"pos":[-6371.01,1097.816],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":306,"pos":[-1888.837,1656.196],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":155,"pos":[-3914.708,142.6664],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":74,"pos":[-2356.991,177.0945],"params":["Inherit","False","Property","_EYESCOLOR","EYES COLOR","2","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.0734529,0.1320755,0.05046281,1","0.0734529,0.1320755,0.05046281,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":151,"pos":[-3770.708,318.6664],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":303,"pos":[-971.2782,1674.231],"params":["Inherit","False","Property","_SKINSMOOTHNESS","SKIN SMOOTHNESS","1","0","Create","True","0","0","0","False","0","False","Object","-1","","0.3","0.426","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":154,"pos":[-3338.708,142.6664],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":63,"pos":[-959.473,600.9581],"params":["Inherit","True","Color Mask","-1","","141","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":316,"pos":[-5751.171,1108.492],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":304,"pos":[-1262.557,1657.188],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":75,"pos":[-1718.558,171.1508],"params":["Inherit","False","Property","_HAIRCOLOR","HAIR COLOR","4","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,0","0.2735849,0.213428,0.1432449,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":302,"pos":[-653.4662,1651.742],"params":["Inherit","False","3","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor","id":584,"pos":[754.506,1097.701],"params":["Inherit","False","Property","_MetalicOn","Metalic On","41","0","Create","True","0","0","0","False","0","False","","1","True","Create","2","0","FLOAT","0","False","1","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":252,"pos":[544.83,1759.57],"params":["Inherit","False","Property","_OCCLUSION","OCCLUSION","40","0","Create","True","0","0","0","False","0","False","Object","-1","","0.5","0","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":583,"pos":[-2018.989,155.1359],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":153,"pos":[-3194.708,318.6664],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor","id":585,"pos":[788.8135,1603.558],"params":["Inherit","False","Property","_SmoothnessOn","Smoothness On","42","0","Create","True","0","0","0","False","0","False","","1","True","Create","2","0","FLOAT","0","False","1","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor","id":579,"pos":[854.0571,1759.464],"params":["Inherit","False","5","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","1","False","3","FLOAT","1","False","4","FLOAT","0.5","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":73,"pos":[-1862.558,331.1509],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":582,"pos":[-1365.06,157.7437],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":41,"pos":[-1162.644,163.7047],"params":["Inherit","False","Property","_SKINCOLOR","SKIN COLOR","0","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","2.02193,1.0081,0.6199315,0","2.02193,1.0081,0.6199315,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":581,"pos":[-886.558,155.1508],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":69,"pos":[-1267.226,336.8063],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":62,"pos":[-678.558,331.1509],"params":["Inherit","True","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":64,"pos":[-132.3684,394.6944],"params":["Inherit","True","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":573,"pos":[-296.0682,-1167.712],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":577,"pos":[-346.0112,397.3837],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor","id":10,"pos":[-1769.44,-1325.746],"params":["Inherit","True","Property","_COATOFARMSMASK","COAT OF ARMS MASK","39","1","[NoScaleOffset]","Create","True","0","0","0","False","0","False","","10","None","None","True","1","False","black","Auto","False","Object","-1","Auto","Texture2D","False","8","0","SAMPLER2D","","False","1","FLOAT2","0,0","False","2","FLOAT","0","False","3","FLOAT2","0,0","False","4","FLOAT2","0,0","False","5","FLOAT","1","False","6","FLOAT","0","False","7","SAMPLERSTATE","","False","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":26,"pos":[-1063.837,-1185.19],"params":["Inherit","False","Property","_COATOFARMSCOLOR","COAT OF ARMS COLOR","38","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,0","1,0.0990566,0.0990566,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":17,"pos":[-814.7589,-1227.691],"params":["Inherit","False","Replace Color","-1","","142","896dccb3016c847439def376a728b869","1,12,0","5","1","COLOR","0,0,0,0","False","2","COLOR","0,0,0,0","False","3","COLOR","0,0,0,0","False","4","FLOAT","0","False","5","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":574,"pos":[-328.0893,-1201.828],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":575,"pos":[-357.1902,-846.472],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor","id":9,"pos":[-1435.856,-1221.265],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor","id":16,"pos":[-1243.999,-947.4095],"params":["Inherit","True","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":576,"pos":[-386.0649,-898.4222],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":25,"pos":[-1067.646,-1364.901],"params":["Inherit","False","Constant","_Color4","Color 4","1","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0,0,0","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":578,"pos":[-295.6249,387.7201],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor","id":18,"pos":[-1043.557,-1002.802],"params":["Inherit","False","Constant","_Vector0","Vector 0","1","0","Create","True","0","0","0","False","0","False","Object","-1","","1.6,1","0,0","0","3","FLOAT2","0","FLOAT","1","FLOAT","2"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":650,"pos":[1178.721,338.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","ExtraPrePass","0","0","ExtraPrePass","6","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","0","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","0","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":651,"pos":[1178.721,338.6894],"params":["Float","False","True","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","Polytope Studio/ PT_Medieval Modular NPC Shader PBR","94348b07e5e8bab40bd6c8a1e3df54cd","True","ForwardLit","0","1","ForwardLit","22","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","1","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","1","LightMode=UniversalForward","False","False","0","Hidden/InternalErrorShader","0","0","Standard","55","Category","0","0","  Instanced Terrain Normals","1","0","Lighting Model","0","0","Workflow","1","0","Surface","0","0","  Keep Alpha","0","0","  Refraction Model","0","0","  Blend","0","0","  Receive Fog","1","0","Two Sided","1","0","Alpha Clipping","1","0","  Use Shadow Threshold","0","0","Fragment Normal Space","0","0","Forward Only","0","0","  Keep GBuffer","0","0","Transmission","0","0","  Transmission Shadow","0.5,False,","0","Translucency","0","0","  Translucency Strength","1,False,","0","  Normal Distortion","0.5,False,","0","  Scattering","2,False,","0","  Direct","0.9,False,","0","  Ambient","0.1,False,","0","  Shadow","0.5,False,","0","Cast Shadows","1","0","Receive Shadows","1","0","Specular Highlights","2","0","Environment Reflections","2","0","Screen Space Reflections","2","0","Receive SSAO","1","0","Motion Vectors","1","0","  Additional Motion Vectors","1","0","  Alembic Motion Vectors","0","0","  XR Motion Vectors","0","0","GPU Instancing","1","0","LOD CrossFade","1","0","Built-in Fog","1","0","_FinalColorxAlpha","0","0","Meta Pass","1","0","Override Baked GI","0","0","Extra Pre Pass","0","0","Tessellation","0","0","  Phong","0","0","  Strength","0.5,False,","0","  Type","0","0","  Tess","16,False,","0","  Min","10,False,","0","  Max","25,False,","0","  Edge Length","16,False,","0","  Max Displacement","25,False,","0","Write Depth","0","0","  Conservative","0","0","Vertex Position","1","0","Debug Display","0","0","Clear Coat","0","0","0","12","False","True","True","True","True","True","True","True","True","True","True","False","False","","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":652,"pos":[1178.721,338.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","ShadowCaster","0","2","ShadowCaster","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","False","False","True","False","False","False","False","0","False","","False","False","False","False","False","False","False","False","False","True","1","False","","True","3","False","","False","False","True","1","LightMode=ShadowCaster","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":653,"pos":[1178.721,338.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","DepthOnly","0","3","DepthOnly","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","False","False","True","False","False","False","False","0","False","","False","False","False","False","False","False","False","False","False","True","1","False","","False","False","False","True","1","LightMode=DepthOnly","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":654,"pos":[1178.721,338.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","Meta","0","4","Meta","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","2","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=Meta","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":655,"pos":[1178.721,338.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","Universal2D","0","5","Universal2D","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","1","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","False","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","1","LightMode=Universal2D","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":656,"pos":[1178.721,338.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","DepthNormals","0","6","DepthNormals","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","0","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","False","","True","3","False","","False","False","True","1","LightMode=DepthNormals","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":657,"pos":[1178.721,338.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","GBuffer","0","7","GBuffer","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","1","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","1","LightMode=UniversalGBuffer","False","True","12","d3d11","gles","metal","vulkan","xboxone","xboxseries","playstation","ps4","ps5","switch","switch2","webgpu","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":658,"pos":[1178.721,418.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","SceneSelectionPass","0","8","SceneSelectionPass","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","2","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=SceneSelectionPass","False","False","0","","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":659,"pos":[1178.721,418.6894],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","ScenePickingPass","0","9","ScenePickingPass","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=Picking","False","False","0","","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":660,"pos":[1178.721,438.6894],"params":["Float","False","False","-1","3","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","MotionVectors","0","10","MotionVectors","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","False","False","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=MotionVectors","False","False","0","","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":661,"pos":[1178.721,448.6894],"params":["Float","False","False","-1","3","UnityEditor.ShaderGraphLitGUI","0","15","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","XRMotionVectors","0","11","XRMotionVectors","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","True","1","False","","255","False","","1","False","","7","False","","3","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","False","False","False","False","True","1","LightMode=XRMotionVectors","False","False","0","","0","0","Standard","0","True","0"]}
{"wire":[180,1,617,0]}
{"wire":[180,3,638,0]}
{"wire":[183,0,199,0]}
{"wire":[183,1,225,0]}
{"wire":[179,1,617,0]}
{"wire":[179,3,637,0]}
{"wire":[186,0,199,0]}
{"wire":[186,1,226,0]}
{"wire":[189,1,183,0]}
{"wire":[189,2,180,0]}
{"wire":[597,0,199,0]}
{"wire":[597,1,595,0]}
{"wire":[596,1,617,0]}
{"wire":[596,3,636,0]}
{"wire":[184,0,189,0]}
{"wire":[184,1,186,0]}
{"wire":[184,2,179,0]}
{"wire":[598,0,184,0]}
{"wire":[598,1,597,0]}
{"wire":[598,2,596,0]}
{"wire":[177,0,199,0]}
{"wire":[177,1,211,0]}
{"wire":[176,1,617,0]}
{"wire":[176,3,635,0]}
{"wire":[599,1,617,0]}
{"wire":[599,3,632,0]}
{"wire":[172,0,199,0]}
{"wire":[172,1,210,0]}
{"wire":[171,0,598,0]}
{"wire":[171,1,177,0]}
{"wire":[171,2,176,0]}
{"wire":[612,1,611,0]}
{"wire":[612,2,599,0]}
{"wire":[169,1,617,0]}
{"wire":[169,3,634,0]}
{"wire":[165,1,617,0]}
{"wire":[165,3,631,0]}
{"wire":[336,0,612,0]}
{"wire":[336,1,337,0]}
{"wire":[336,2,165,0]}
{"wire":[178,0,171,0]}
{"wire":[178,1,172,0]}
{"wire":[178,2,169,0]}
{"wire":[158,1,617,0]}
{"wire":[158,3,630,0]}
{"wire":[175,0,199,0]}
{"wire":[175,1,209,0]}
{"wire":[168,1,617,0]}
{"wire":[168,3,633,0]}
{"wire":[601,0,199,0]}
{"wire":[601,1,600,0]}
{"wire":[173,0,178,0]}
{"wire":[173,1,175,0]}
{"wire":[173,2,168,0]}
{"wire":[332,0,336,0]}
{"wire":[332,1,335,0]}
{"wire":[332,2,158,0]}
{"wire":[157,1,617,0]}
{"wire":[157,3,629,0]}
{"wire":[603,1,617,0]}
{"wire":[603,3,628,0]}
{"wire":[602,0,173,0]}
{"wire":[602,1,601,0]}
{"wire":[602,2,599,0]}
{"wire":[166,0,199,0]}
{"wire":[166,1,203,0]}
{"wire":[334,0,332,0]}
{"wire":[334,1,333,0]}
{"wire":[334,2,157,0]}
{"wire":[608,0,334,0]}
{"wire":[608,1,607,0]}
{"wire":[608,2,603,0]}
{"wire":[160,0,602,0]}
{"wire":[160,1,166,0]}
{"wire":[160,2,165,0]}
{"wire":[161,0,199,0]}
{"wire":[161,1,202,0]}
{"wire":[117,1,617,0]}
{"wire":[117,3,627,0]}
{"wire":[327,0,608,0]}
{"wire":[327,1,329,0]}
{"wire":[327,2,117,0]}
{"wire":[164,0,199,0]}
{"wire":[164,1,201,0]}
{"wire":[127,1,617,0]}
{"wire":[127,3,625,0]}
{"wire":[167,0,160,0]}
{"wire":[167,1,161,0]}
{"wire":[167,2,158,0]}
{"wire":[123,1,617,0]}
{"wire":[123,3,624,0]}
{"wire":[162,0,167,0]}
{"wire":[162,1,164,0]}
{"wire":[162,2,157,0]}
{"wire":[331,0,327,0]}
{"wire":[331,1,326,0]}
{"wire":[331,2,127,0]}
{"wire":[605,0,199,0]}
{"wire":[605,1,604,0]}
{"wire":[328,0,331,0]}
{"wire":[328,1,330,0]}
{"wire":[328,2,123,0]}
{"wire":[145,1,617,0]}
{"wire":[145,3,623,0]}
{"wire":[606,0,162,0]}
{"wire":[606,1,605,0]}
{"wire":[606,2,603,0]}
{"wire":[126,0,199,0]}
{"wire":[126,1,197,0]}
{"wire":[118,0,606,0]}
{"wire":[118,1,126,0]}
{"wire":[118,2,117,0]}
{"wire":[120,0,199,0]}
{"wire":[120,1,196,0]}
{"wire":[149,1,617,0]}
{"wire":[149,3,622,0]}
{"wire":[321,0,328,0]}
{"wire":[321,1,323,0]}
{"wire":[321,2,145,0]}
{"wire":[325,0,321,0]}
{"wire":[325,1,320,0]}
{"wire":[325,2,149,0]}
{"wire":[128,0,118,0]}
{"wire":[128,1,120,0]}
{"wire":[128,2,127,0]}
{"wire":[610,1,609,0]}
{"wire":[610,2,603,0]}
{"wire":[119,0,199,0]}
{"wire":[119,1,195,0]}
{"wire":[71,1,617,0]}
{"wire":[71,3,618,0]}
{"wire":[150,1,617,0]}
{"wire":[150,3,621,0]}
{"wire":[156,0,199,0]}
{"wire":[156,1,193,0]}
{"wire":[322,0,325,0]}
{"wire":[322,1,324,0]}
{"wire":[322,2,150,0]}
{"wire":[649,0,71,0]}
{"wire":[315,0,610,0]}
{"wire":[315,1,317,0]}
{"wire":[315,2,117,0]}
{"wire":[122,0,128,0]}
{"wire":[122,1,119,0]}
{"wire":[122,2,123,0]}
{"wire":[67,1,617,0]}
{"wire":[67,3,619,0]}
{"wire":[148,0,122,0]}
{"wire":[148,1,156,0]}
{"wire":[148,2,145,0]}
{"wire":[319,0,315,0]}
{"wire":[319,1,314,0]}
{"wire":[319,2,127,0]}
{"wire":[306,0,322,0]}
{"wire":[306,1,307,0]}
{"wire":[306,2,649,0]}
{"wire":[155,0,199,0]}
{"wire":[155,1,192,0]}
{"wire":[151,0,148,0]}
{"wire":[151,1,155,0]}
{"wire":[151,2,149,0]}
{"wire":[154,0,199,0]}
{"wire":[154,1,191,0]}
{"wire":[63,1,617,0]}
{"wire":[63,3,620,0]}
{"wire":[316,0,319,0]}
{"wire":[316,1,318,0]}
{"wire":[316,2,123,0]}
{"wire":[304,0,306,0]}
{"wire":[304,1,305,0]}
{"wire":[304,2,67,0]}
{"wire":[302,0,304,0]}
{"wire":[302,1,303,0]}
{"wire":[302,2,63,0]}
{"wire":[584,1,316,0]}
{"wire":[583,0,199,0]}
{"wire":[583,1,74,0]}
{"wire":[153,0,151,0]}
{"wire":[153,1,154,0]}
{"wire":[153,2,150,0]}
{"wire":[585,1,302,0]}
{"wire":[579,0,252,0]}
{"wire":[73,0,153,0]}
{"wire":[73,1,583,0]}
{"wire":[73,2,71,0]}
{"wire":[582,0,199,0]}
{"wire":[582,1,75,0]}
{"wire":[581,0,199,0]}
{"wire":[581,1,41,0]}
{"wire":[69,0,73,0]}
{"wire":[69,1,582,0]}
{"wire":[69,2,67,0]}
{"wire":[62,0,69,0]}
{"wire":[62,1,581,0]}
{"wire":[62,2,63,0]}
{"wire":[64,0,62,0]}
{"wire":[64,1,578,0]}
{"wire":[64,2,577,0]}
{"wire":[573,0,574,0]}
{"wire":[577,0,575,0]}
{"wire":[17,1,9,0]}
{"wire":[17,2,25,0]}
{"wire":[17,3,26,0]}
{"wire":[17,4,18,1]}
{"wire":[17,5,18,2]}
{"wire":[574,0,17,0]}
{"wire":[575,0,576,0]}
{"wire":[9,0,10,4]}
{"wire":[16,0,9,0]}
{"wire":[576,0,16,0]}
{"wire":[578,0,573,0]}
{"wire":[651,0,64,0]}
{"wire":[651,3,584,0]}
{"wire":[651,4,585,0]}
{"wire":[651,5,579,0]}
ASEEND*/
//CHKSM=8754C51C26DCD69F542319FEBE8F773838FBBD01