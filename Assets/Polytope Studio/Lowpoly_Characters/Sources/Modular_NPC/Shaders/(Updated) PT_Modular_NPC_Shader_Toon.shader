// Made with Amplify Shader Editor v1.9.9.14
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Polytope Studio/ PT_Medieval Modular NPC Shader Toon"
{
	Properties
	{
		[HideInInspector] _Cutoff("Alpha Cutoff", Range(0, 1)) = 0.5
		[HDR] _SKINCOLOR1( "SKIN COLOR", Color ) = ( 2.02193, 1.0081, 0.6199315, 0 )
		[HDR] _COATOFARMSCOLOR( "COAT OF ARMS COLOR", Color ) = ( 1, 0, 0, 0 )
		[NoScaleOffset] _COATOFARMSMASK( "COAT OF ARMS MASK", 2D ) = "black" {}
		_CEL1SIZE( "CEL 1 SIZE", Range( 0, 1 ) ) = 0.1
		[HDR] _EYESCOLOR1( "EYES COLOR", Color ) = ( 0.0734529, 0.1320755, 0.05046281, 1 )
		_CEL2SIZE( "CEL 2 SIZE", Range( 0, 1 ) ) = 0.4
		_CEL3SIZE( "CEL 3 SIZE", Range( 0, 1 ) ) = 0.8
		[HDR] _HAIRCOLOR1( "HAIR COLOR", Color ) = ( 1, 0, 0, 0 )
		_CEL1POWER( "CEL 1 POWER", Range( 0, 1 ) ) = 0.15
		_CEL2POWER( "CEL 2 POWER", Range( 0, 1 ) ) = 0.15
		[HDR] _SCLERACOLOR1( "SCLERA COLOR", Color ) = ( 0.9056604, 0.8159487, 0.8159487, 0 )
		_CEL3POWER( "CEL 3 POWER", Range( 0, 1 ) ) = 0.15
		[HDR] _CEL1COLOR( "CEL 1 COLOR", Color ) = ( 1, 1, 1, 0 )
		[HDR] _LIPSCOLOR1( "LIPS COLOR", Color ) = ( 0.8301887, 0.3185886, 0.2780349, 0 )
		[HDR] _CEL2COLOR( "CEL 2 COLOR", Color ) = ( 1, 1, 1, 0 )
		[HDR] _OTHERCOLOR1( "OTHER COLOR", Color ) = ( 0.5188679, 0.4637216, 0.3206212, 0 )
		[HDR] _CEL3COLOR( "CEL 3 COLOR", Color ) = ( 1, 1, 1, 0 )
		[HDR] _METAL1COLOR1( "METAL 1 COLOR", Color ) = ( 0.8792791, 0.9922886, 1.007606, 0 )
		[HDR] _METAL2COLOR1( "METAL 2 COLOR", Color ) = ( 0.4674706, 0.4677705, 0.5188679, 0 )
		[HDR] _METAL3COLOR1( "METAL 3 COLOR", Color ) = ( 0.4383232, 0.4383232, 0.4716981, 0 )
		[HDR] _METAL4COLOR1( "METAL 4 COLOR", Color ) = ( 0.4383232, 0.4383232, 0.4716981, 0 )
		[HDR] _LEATHER1COLOR1( "LEATHER 1 COLOR", Color ) = ( 0.4811321, 0.2041155, 0.08851016, 1 )
		[HDR] _LEATHER2COLOR1( "LEATHER 2 COLOR", Color ) = ( 0.4245283, 0.190437, 0.09011215, 1 )
		[HDR] _LEATHER3COLOR1( "LEATHER 3 COLOR", Color ) = ( 0.1698113, 0.04637412, 0.02963688, 1 )
		[HDR] _LEATHER4COLOR1( "LEATHER 4 COLOR", Color ) = ( 0.1698113, 0.04637412, 0.02963688, 1 )
		[HDR] _CLOTH1COLOR1( "CLOTH 1 COLOR", Color ) = ( 0, 0.1792453, 0.05062231, 0 )
		[HDR] _CLOTH2COLOR1( "CLOTH 2 COLOR", Color ) = ( 1, 0, 0, 0 )
		[HDR] _CLOTH3COLOR1( "CLOTH 3 COLOR", Color ) = ( 0.3962264, 0.3391397, 0.2710039, 0 )
		[HDR] _CLOTH4COLOR1( "CLOTH 4 COLOR", Color ) = ( 0.2011392, 0.3773585, 0.3739074, 0 )
		[HDR] _FEATHERS1COLOR1( "FEATHERS 1 COLOR", Color ) = ( 0.7735849, 0.492613, 0.492613, 0 )
		[HDR] _FEATHERS2COLOR1( "FEATHERS 2 COLOR", Color ) = ( 0.6792453, 0, 0, 0 )
		[HideInInspector] _TextureSample1( "Texture Sample 0", 2D ) = "white" {}
		[HideInInspector] _TextureSample3( "Texture Sample 2", 2D ) = "white" {}


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
			#define _EMISSION
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
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


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
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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

			sampler2D _TextureSample3;
			sampler2D _TextureSample1;
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

				float2 uv_TextureSample3 = input.ase_texcoord7.xy * _TextureSample3_ST.xy + _TextureSample3_ST.zw;
				float4 tex2DNode722 = tex2D( _TextureSample3, uv_TextureSample3 );
				float4 color721 = IsGammaSpace() ? float4( 0.4980392, 1, 1, 1 ) : float4( 0.2122307, 1, 1, 1 );
				float2 uv_TextureSample1 = input.ase_texcoord7.xy * _TextureSample1_ST.xy + _TextureSample1_ST.zw;
				float4 tex2DNode724 = tex2D( _TextureSample1, uv_TextureSample1 );
				float4 lerpResult729 = lerp( float4( 0,0,0,0 ) , ( tex2DNode722 * _FEATHERS2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color721.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color728 = IsGammaSpace() ? float4( 0.4980392, 1, 0.4980392, 1 ) : float4( 0.2122307, 1, 0.2122307, 1 );
				float4 lerpResult737 = lerp( lerpResult729 , ( tex2DNode722 * _FEATHERS1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color728.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color732 = IsGammaSpace() ? float4( 0, 0, 1, 1 ) : float4( 0, 0, 1, 1 );
				float4 lerpResult745 = lerp( lerpResult737 , ( tex2DNode722 * _CLOTH4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color732.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color734 = IsGammaSpace() ? float4( 0, 1, 1, 1 ) : float4( 0, 1, 1, 1 );
				float4 lerpResult750 = lerp( lerpResult745 , ( tex2DNode722 * _CLOTH3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color734.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color741 = IsGammaSpace() ? float4( 0, 1, 0, 1 ) : float4( 0, 1, 0, 1 );
				float4 lerpResult754 = lerp( lerpResult750 , ( tex2DNode722 * _CLOTH2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color741.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color748 = IsGammaSpace() ? float4( 0, 0.4980392, 0, 1 ) : float4( 0, 0.2122307, 0, 1 );
				float4 lerpResult761 = lerp( lerpResult754 , ( tex2DNode722 * _CLOTH1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color748.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color735 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float4 lerpResult766 = lerp( lerpResult761 , ( tex2DNode722 * _LEATHER4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color735.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color746 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float4 lerpResult771 = lerp( lerpResult766 , ( tex2DNode722 * _LEATHER3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color746.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color753 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float4 lerpResult776 = lerp( lerpResult771 , ( tex2DNode722 * _LEATHER2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color753.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color755 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float4 lerpResult782 = lerp( lerpResult776 , ( tex2DNode722 * _LEATHER1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color755.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color762 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float4 lerpResult788 = lerp( lerpResult782 , ( tex2DNode722 * _METAL4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color762.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color769 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float4 lerpResult794 = lerp( lerpResult788 , ( tex2DNode722 * _METAL3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color769.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color770 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float4 lerpResult799 = lerp( lerpResult794 , ( tex2DNode722 * _METAL2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color770.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color778 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float4 lerpResult803 = lerp( lerpResult799 , ( tex2DNode722 * _METAL1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color778.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color784 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float4 lerpResult807 = lerp( lerpResult803 , ( tex2DNode722 * _OTHERCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color784.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color786 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float4 lerpResult811 = lerp( lerpResult807 , ( tex2DNode722 * _LIPSCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color786.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color792 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float4 lerpResult815 = lerp( lerpResult811 , ( tex2DNode722 * _SCLERACOLOR1 ) , saturate( ( 1.0 - ( ( distance( color792.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color790 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float4 lerpResult820 = lerp( lerpResult815 , ( tex2DNode722 * _EYESCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color790.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color804 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float4 lerpResult821 = lerp( lerpResult820 , ( tex2DNode722 * _HAIRCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color804.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color806 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float4 lerpResult823 = lerp( lerpResult821 , ( tex2DNode722 * _SKINCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color806.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord7.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g139 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4( 0, 0, 0, 0 ) : float4( 0, 0, 0, 0 );
				float4 temp_output_2_0_g139 = color25;
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g139 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g139 , saturate( ( ( distance( temp_output_1_0_g139 , temp_output_2_0_g139 ) - _Vector0.x ) / max( _Vector0.y, 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult823 , lerpResult21_g139 , ( 1.0 - temp_output_9_0 ));
				float fresnelNdotV369 = dot( NormalWS, ViewDirWS );
				float fresnelNode369 = ( 0.0 + 1.0 * pow( max( 1.0 - fresnelNdotV369 , 0.0001 ), 1.0 ) );
				float4 temp_cast_41 = (step( fresnelNode369 , _CEL1SIZE )).xxxx;
				float4 blendOpSrc689 = temp_cast_41;
				float4 blendOpDest689 = _CEL1COLOR;
				float4 temp_cast_42 = ( (0.0 + ( _CEL1POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc683 = ( saturate( ( blendOpSrc689 * blendOpDest689 ) ));
				float4 blendOpDest683 = temp_cast_42;
				float4 blendOpSrc661 = ( blendOpSrc683 * blendOpDest683 );
				float4 blendOpDest661 = lerpResult64;
				float fresnelNdotV365 = dot( NormalWS, ViewDirWS );
				float fresnelNode365 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV365, 1.0 ) );
				float4 temp_cast_43 = (step( fresnelNode365 , _CEL2SIZE )).xxxx;
				float4 blendOpSrc696 = temp_cast_43;
				float4 blendOpDest696 = _CEL2COLOR;
				float4 temp_cast_44 = ( (0.0 + ( _CEL2POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc686 = ( saturate( ( blendOpSrc696 * blendOpDest696 ) ));
				float4 blendOpDest686 = temp_cast_44;
				float4 blendOpSrc662 = ( blendOpSrc686 * blendOpDest686 );
				float4 blendOpDest662 = lerpResult64;
				float fresnelNdotV368 = dot( NormalWS, ViewDirWS );
				float fresnelNode368 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV368, 1.0 ) );
				float4 temp_cast_45 = (step( fresnelNode368 , _CEL3SIZE )).xxxx;
				float4 blendOpSrc698 = temp_cast_45;
				float4 blendOpDest698 = _CEL3COLOR;
				float4 temp_cast_46 = ( (0.0 + ( _CEL3POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc687 = ( saturate( ( blendOpSrc698 * blendOpDest698 ) ));
				float4 blendOpDest687 = temp_cast_46;
				float4 blendOpSrc663 = ( blendOpSrc687 * blendOpDest687 );
				float4 blendOpDest663 = lerpResult64;
				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
				float3 Normal = float3(0, 0, 1);
				float3 Specular = 0.5;
				float Metallic = 0;
				float Smoothness = 0.5;
				float Occlusion = 1;
				float3 Emission = ( lerpResult64 + ( ( blendOpSrc661 * blendOpDest661 ) + ( saturate( ( blendOpSrc662 * blendOpDest662 ) )) + ( saturate( ( blendOpSrc663 * blendOpDest663 ) )) ) ).rgb;
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
			#define _EMISSION
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
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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
			#define _EMISSION
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
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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
			#define _EMISSION
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
			#define ASE_NEEDS_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_VERT_NORMAL


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
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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

			sampler2D _TextureSample3;
			sampler2D _TextureSample1;
			sampler2D _COATOFARMSMASK;


			
			PackedVaryings VertexFunction( Attributes input  )
			{
				PackedVaryings output = (PackedVaryings)0;
				UNITY_SETUP_INSTANCE_ID(input);
				UNITY_TRANSFER_INSTANCE_ID(input, output);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(output);

				float3 ase_normalWS = TransformObjectToWorldNormal( input.normalOS );
				output.ase_texcoord4.xyz = ase_normalWS;
				
				output.ase_texcoord3.xy = input.texcoord.xy;
				output.ase_texcoord3.zw = input.texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				output.ase_texcoord4.w = 0;

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

				float2 uv_TextureSample3 = input.ase_texcoord3.xy * _TextureSample3_ST.xy + _TextureSample3_ST.zw;
				float4 tex2DNode722 = tex2D( _TextureSample3, uv_TextureSample3 );
				float4 color721 = IsGammaSpace() ? float4( 0.4980392, 1, 1, 1 ) : float4( 0.2122307, 1, 1, 1 );
				float2 uv_TextureSample1 = input.ase_texcoord3.xy * _TextureSample1_ST.xy + _TextureSample1_ST.zw;
				float4 tex2DNode724 = tex2D( _TextureSample1, uv_TextureSample1 );
				float4 lerpResult729 = lerp( float4( 0,0,0,0 ) , ( tex2DNode722 * _FEATHERS2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color721.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color728 = IsGammaSpace() ? float4( 0.4980392, 1, 0.4980392, 1 ) : float4( 0.2122307, 1, 0.2122307, 1 );
				float4 lerpResult737 = lerp( lerpResult729 , ( tex2DNode722 * _FEATHERS1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color728.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color732 = IsGammaSpace() ? float4( 0, 0, 1, 1 ) : float4( 0, 0, 1, 1 );
				float4 lerpResult745 = lerp( lerpResult737 , ( tex2DNode722 * _CLOTH4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color732.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color734 = IsGammaSpace() ? float4( 0, 1, 1, 1 ) : float4( 0, 1, 1, 1 );
				float4 lerpResult750 = lerp( lerpResult745 , ( tex2DNode722 * _CLOTH3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color734.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color741 = IsGammaSpace() ? float4( 0, 1, 0, 1 ) : float4( 0, 1, 0, 1 );
				float4 lerpResult754 = lerp( lerpResult750 , ( tex2DNode722 * _CLOTH2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color741.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color748 = IsGammaSpace() ? float4( 0, 0.4980392, 0, 1 ) : float4( 0, 0.2122307, 0, 1 );
				float4 lerpResult761 = lerp( lerpResult754 , ( tex2DNode722 * _CLOTH1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color748.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color735 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float4 lerpResult766 = lerp( lerpResult761 , ( tex2DNode722 * _LEATHER4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color735.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color746 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float4 lerpResult771 = lerp( lerpResult766 , ( tex2DNode722 * _LEATHER3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color746.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color753 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float4 lerpResult776 = lerp( lerpResult771 , ( tex2DNode722 * _LEATHER2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color753.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color755 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float4 lerpResult782 = lerp( lerpResult776 , ( tex2DNode722 * _LEATHER1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color755.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color762 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float4 lerpResult788 = lerp( lerpResult782 , ( tex2DNode722 * _METAL4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color762.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color769 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float4 lerpResult794 = lerp( lerpResult788 , ( tex2DNode722 * _METAL3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color769.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color770 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float4 lerpResult799 = lerp( lerpResult794 , ( tex2DNode722 * _METAL2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color770.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color778 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float4 lerpResult803 = lerp( lerpResult799 , ( tex2DNode722 * _METAL1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color778.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color784 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float4 lerpResult807 = lerp( lerpResult803 , ( tex2DNode722 * _OTHERCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color784.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color786 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float4 lerpResult811 = lerp( lerpResult807 , ( tex2DNode722 * _LIPSCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color786.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color792 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float4 lerpResult815 = lerp( lerpResult811 , ( tex2DNode722 * _SCLERACOLOR1 ) , saturate( ( 1.0 - ( ( distance( color792.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color790 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float4 lerpResult820 = lerp( lerpResult815 , ( tex2DNode722 * _EYESCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color790.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color804 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float4 lerpResult821 = lerp( lerpResult820 , ( tex2DNode722 * _HAIRCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color804.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color806 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float4 lerpResult823 = lerp( lerpResult821 , ( tex2DNode722 * _SKINCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color806.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord3.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g139 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4( 0, 0, 0, 0 ) : float4( 0, 0, 0, 0 );
				float4 temp_output_2_0_g139 = color25;
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g139 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g139 , saturate( ( ( distance( temp_output_1_0_g139 , temp_output_2_0_g139 ) - _Vector0.x ) / max( _Vector0.y, 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult823 , lerpResult21_g139 , ( 1.0 - temp_output_9_0 ));
				float3 ase_viewVectorWS = ( ( unity_OrthoParams.w == 0 ) ? _WorldSpaceCameraPos - PositionWS : UNITY_MATRIX_V[ 2 ].xyz );
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float3 ase_normalWS = input.ase_texcoord4.xyz;
				float fresnelNdotV369 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode369 = ( 0.0 + 1.0 * pow( max( 1.0 - fresnelNdotV369 , 0.0001 ), 1.0 ) );
				float4 temp_cast_41 = (step( fresnelNode369 , _CEL1SIZE )).xxxx;
				float4 blendOpSrc689 = temp_cast_41;
				float4 blendOpDest689 = _CEL1COLOR;
				float4 temp_cast_42 = ( (0.0 + ( _CEL1POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc683 = ( saturate( ( blendOpSrc689 * blendOpDest689 ) ));
				float4 blendOpDest683 = temp_cast_42;
				float4 blendOpSrc661 = ( blendOpSrc683 * blendOpDest683 );
				float4 blendOpDest661 = lerpResult64;
				float fresnelNdotV365 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode365 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV365, 1.0 ) );
				float4 temp_cast_43 = (step( fresnelNode365 , _CEL2SIZE )).xxxx;
				float4 blendOpSrc696 = temp_cast_43;
				float4 blendOpDest696 = _CEL2COLOR;
				float4 temp_cast_44 = ( (0.0 + ( _CEL2POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc686 = ( saturate( ( blendOpSrc696 * blendOpDest696 ) ));
				float4 blendOpDest686 = temp_cast_44;
				float4 blendOpSrc662 = ( blendOpSrc686 * blendOpDest686 );
				float4 blendOpDest662 = lerpResult64;
				float fresnelNdotV368 = dot( ase_normalWS, ase_viewDirWS );
				float fresnelNode368 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV368, 1.0 ) );
				float4 temp_cast_45 = (step( fresnelNode368 , _CEL3SIZE )).xxxx;
				float4 blendOpSrc698 = temp_cast_45;
				float4 blendOpDest698 = _CEL3COLOR;
				float4 temp_cast_46 = ( (0.0 + ( _CEL3POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc687 = ( saturate( ( blendOpSrc698 * blendOpDest698 ) ));
				float4 blendOpDest687 = temp_cast_46;
				float4 blendOpSrc663 = ( blendOpSrc687 * blendOpDest687 );
				float4 blendOpDest663 = lerpResult64;
				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
				float3 Emission = ( lerpResult64 + ( ( blendOpSrc661 * blendOpDest661 ) + ( saturate( ( blendOpSrc662 * blendOpDest662 ) )) + ( saturate( ( blendOpSrc663 * blendOpDest663 ) )) ) ).rgb;
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
			#define _EMISSION
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

			

			struct Attributes
			{
				float4 positionOS : POSITION;
				half3 normalOS : NORMAL;
				half4 tangentOS : TANGENT;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct PackedVaryings
			{
				float4 positionCS : SV_POSITION;
				float3 positionWS : TEXCOORD0;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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
				UNITY_SETUP_INSTANCE_ID( input );
				UNITY_TRANSFER_INSTANCE_ID( input, output );
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

				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
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
			#define _EMISSION
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
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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

				

				float3 Normal = float3(0, 0, 1);
				float Smoothness = 0.5;
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
			#define _EMISSION
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
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


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
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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

			sampler2D _TextureSample3;
			sampler2D _TextureSample1;
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

				float2 uv_TextureSample3 = input.ase_texcoord7.xy * _TextureSample3_ST.xy + _TextureSample3_ST.zw;
				float4 tex2DNode722 = tex2D( _TextureSample3, uv_TextureSample3 );
				float4 color721 = IsGammaSpace() ? float4( 0.4980392, 1, 1, 1 ) : float4( 0.2122307, 1, 1, 1 );
				float2 uv_TextureSample1 = input.ase_texcoord7.xy * _TextureSample1_ST.xy + _TextureSample1_ST.zw;
				float4 tex2DNode724 = tex2D( _TextureSample1, uv_TextureSample1 );
				float4 lerpResult729 = lerp( float4( 0,0,0,0 ) , ( tex2DNode722 * _FEATHERS2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color721.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color728 = IsGammaSpace() ? float4( 0.4980392, 1, 0.4980392, 1 ) : float4( 0.2122307, 1, 0.2122307, 1 );
				float4 lerpResult737 = lerp( lerpResult729 , ( tex2DNode722 * _FEATHERS1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color728.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color732 = IsGammaSpace() ? float4( 0, 0, 1, 1 ) : float4( 0, 0, 1, 1 );
				float4 lerpResult745 = lerp( lerpResult737 , ( tex2DNode722 * _CLOTH4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color732.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color734 = IsGammaSpace() ? float4( 0, 1, 1, 1 ) : float4( 0, 1, 1, 1 );
				float4 lerpResult750 = lerp( lerpResult745 , ( tex2DNode722 * _CLOTH3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color734.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color741 = IsGammaSpace() ? float4( 0, 1, 0, 1 ) : float4( 0, 1, 0, 1 );
				float4 lerpResult754 = lerp( lerpResult750 , ( tex2DNode722 * _CLOTH2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color741.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color748 = IsGammaSpace() ? float4( 0, 0.4980392, 0, 1 ) : float4( 0, 0.2122307, 0, 1 );
				float4 lerpResult761 = lerp( lerpResult754 , ( tex2DNode722 * _CLOTH1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color748.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color735 = IsGammaSpace() ? float4( 1, 0.4980392, 0.4980392, 1 ) : float4( 1, 0.2122307, 0.2122307, 1 );
				float4 lerpResult766 = lerp( lerpResult761 , ( tex2DNode722 * _LEATHER4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color735.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color746 = IsGammaSpace() ? float4( 1, 1, 0.4980392, 1 ) : float4( 1, 1, 0.2122307, 1 );
				float4 lerpResult771 = lerp( lerpResult766 , ( tex2DNode722 * _LEATHER3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color746.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color753 = IsGammaSpace() ? float4( 1, 0, 1, 1 ) : float4( 1, 0, 1, 1 );
				float4 lerpResult776 = lerp( lerpResult771 , ( tex2DNode722 * _LEATHER2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color753.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color755 = IsGammaSpace() ? float4( 1, 0.4980392, 1, 1 ) : float4( 1, 0.2122307, 1, 1 );
				float4 lerpResult782 = lerp( lerpResult776 , ( tex2DNode722 * _LEATHER1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color755.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color762 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 1, 1 ) : float4( 0.2122307, 0.2122307, 1, 1 );
				float4 lerpResult788 = lerp( lerpResult782 , ( tex2DNode722 * _METAL4COLOR1 ) , saturate( ( 1.0 - ( ( distance( color762.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color769 = IsGammaSpace() ? float4( 0, 0.4980392, 0.4980392, 1 ) : float4( 0, 0.2122307, 0.2122307, 1 );
				float4 lerpResult794 = lerp( lerpResult788 , ( tex2DNode722 * _METAL3COLOR1 ) , saturate( ( 1.0 - ( ( distance( color769.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color770 = IsGammaSpace() ? float4( 0, 0, 0.4980392, 1 ) : float4( 0, 0, 0.2122307, 1 );
				float4 lerpResult799 = lerp( lerpResult794 , ( tex2DNode722 * _METAL2COLOR1 ) , saturate( ( 1.0 - ( ( distance( color770.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color778 = IsGammaSpace() ? float4( 0.4980392, 0, 0.4980392, 1 ) : float4( 0.2122307, 0, 0.2122307, 1 );
				float4 lerpResult803 = lerp( lerpResult799 , ( tex2DNode722 * _METAL1COLOR1 ) , saturate( ( 1.0 - ( ( distance( color778.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color784 = IsGammaSpace() ? float4( 1, 1, 0, 1 ) : float4( 1, 1, 0, 1 );
				float4 lerpResult807 = lerp( lerpResult803 , ( tex2DNode722 * _OTHERCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color784.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color786 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0, 1 ) : float4( 0.2122307, 0.2122307, 0, 1 );
				float4 lerpResult811 = lerp( lerpResult807 , ( tex2DNode722 * _LIPSCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color786.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color792 = IsGammaSpace() ? float4( 0.4980392, 0.4980392, 0.4980392, 1 ) : float4( 0.2122307, 0.2122307, 0.2122307, 1 );
				float4 lerpResult815 = lerp( lerpResult811 , ( tex2DNode722 * _SCLERACOLOR1 ) , saturate( ( 1.0 - ( ( distance( color792.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color790 = IsGammaSpace() ? float4( 1, 0, 0, 1 ) : float4( 1, 0, 0, 1 );
				float4 lerpResult820 = lerp( lerpResult815 , ( tex2DNode722 * _EYESCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color790.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color804 = IsGammaSpace() ? float4( 1, 0.4980392, 0, 1 ) : float4( 1, 0.2122307, 0, 1 );
				float4 lerpResult821 = lerp( lerpResult820 , ( tex2DNode722 * _HAIRCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color804.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float4 color806 = IsGammaSpace() ? float4( 0.4980392, 0, 0, 1 ) : float4( 0.2122307, 0, 0, 1 );
				float4 lerpResult823 = lerp( lerpResult821 , ( tex2DNode722 * _SKINCOLOR1 ) , saturate( ( 1.0 - ( ( distance( color806.rgb , tex2DNode724.rgb ) - 0.1 ) / max( 0.0, 1E-05 ) ) ) ));
				float2 uv1_COATOFARMSMASK10 = input.ase_texcoord7.zw;
				float temp_output_9_0 = ( 1.0 - tex2D( _COATOFARMSMASK, uv1_COATOFARMSMASK10 ).a );
				float4 temp_cast_40 = (temp_output_9_0).xxxx;
				float4 temp_output_1_0_g139 = temp_cast_40;
				float4 color25 = IsGammaSpace() ? float4( 0, 0, 0, 0 ) : float4( 0, 0, 0, 0 );
				float4 temp_output_2_0_g139 = color25;
				float2 _Vector0 = float2(1.6,1);
				float4 lerpResult21_g139 = lerp( _COATOFARMSCOLOR , temp_output_1_0_g139 , saturate( ( ( distance( temp_output_1_0_g139 , temp_output_2_0_g139 ) - _Vector0.x ) / max( _Vector0.y, 1E-05 ) ) ));
				float4 lerpResult64 = lerp( lerpResult823 , lerpResult21_g139 , ( 1.0 - temp_output_9_0 ));
				float fresnelNdotV369 = dot( NormalWS, ViewDirWS );
				float fresnelNode369 = ( 0.0 + 1.0 * pow( max( 1.0 - fresnelNdotV369 , 0.0001 ), 1.0 ) );
				float4 temp_cast_41 = (step( fresnelNode369 , _CEL1SIZE )).xxxx;
				float4 blendOpSrc689 = temp_cast_41;
				float4 blendOpDest689 = _CEL1COLOR;
				float4 temp_cast_42 = ( (0.0 + ( _CEL1POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc683 = ( saturate( ( blendOpSrc689 * blendOpDest689 ) ));
				float4 blendOpDest683 = temp_cast_42;
				float4 blendOpSrc661 = ( blendOpSrc683 * blendOpDest683 );
				float4 blendOpDest661 = lerpResult64;
				float fresnelNdotV365 = dot( NormalWS, ViewDirWS );
				float fresnelNode365 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV365, 1.0 ) );
				float4 temp_cast_43 = (step( fresnelNode365 , _CEL2SIZE )).xxxx;
				float4 blendOpSrc696 = temp_cast_43;
				float4 blendOpDest696 = _CEL2COLOR;
				float4 temp_cast_44 = ( (0.0 + ( _CEL2POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc686 = ( saturate( ( blendOpSrc696 * blendOpDest696 ) ));
				float4 blendOpDest686 = temp_cast_44;
				float4 blendOpSrc662 = ( blendOpSrc686 * blendOpDest686 );
				float4 blendOpDest662 = lerpResult64;
				float fresnelNdotV368 = dot( NormalWS, ViewDirWS );
				float fresnelNode368 = ( 0.0 + 1.0 * pow( 1.0 - fresnelNdotV368, 1.0 ) );
				float4 temp_cast_45 = (step( fresnelNode368 , _CEL3SIZE )).xxxx;
				float4 blendOpSrc698 = temp_cast_45;
				float4 blendOpDest698 = _CEL3COLOR;
				float4 temp_cast_46 = ( (0.0 + ( _CEL3POWER - 0.0 ) * ( 3.0 - 0.0 ) / ( 1.0 - 0.0 ) )).xxxx;
				float4 blendOpSrc687 = ( saturate( ( blendOpSrc698 * blendOpDest698 ) ));
				float4 blendOpDest687 = temp_cast_46;
				float4 blendOpSrc663 = ( blendOpSrc687 * blendOpDest687 );
				float4 blendOpDest663 = lerpResult64;
				

				float3 BaseColor = float3(0.5, 0.5, 0.5);
				float3 Normal = float3(0, 0, 1);
				float3 Specular = 0.5;
				float Metallic = 0;
				float Smoothness = 0.5;
				float Occlusion = 1;
				float3 Emission = ( lerpResult64 + ( ( blendOpSrc661 * blendOpDest661 ) + ( saturate( ( blendOpSrc662 * blendOpDest662 ) )) + ( saturate( ( blendOpSrc663 * blendOpDest663 ) )) ) ).rgb;
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
			#define _EMISSION
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
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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
			#define _EMISSION
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
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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
			#define _EMISSION
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
			float4 _TextureSample3_ST;
			float4 _CEL2COLOR;
			float4 _CEL1COLOR;
			float4 _COATOFARMSCOLOR;
			float4 _SKINCOLOR1;
			float4 _HAIRCOLOR1;
			float4 _EYESCOLOR1;
			float4 _SCLERACOLOR1;
			float4 _LIPSCOLOR1;
			float4 _OTHERCOLOR1;
			float4 _CEL3COLOR;
			float4 _METAL2COLOR1;
			float4 _METAL3COLOR1;
			float4 _METAL1COLOR1;
			float4 _LEATHER1COLOR1;
			float4 _FEATHERS2COLOR1;
			float4 _TextureSample1_ST;
			float4 _METAL4COLOR1;
			float4 _CLOTH4COLOR1;
			float4 _CLOTH3COLOR1;
			float4 _FEATHERS1COLOR1;
			float4 _CLOTH1COLOR1;
			float4 _LEATHER4COLOR1;
			float4 _LEATHER3COLOR1;
			float4 _LEATHER2COLOR1;
			float4 _CLOTH2COLOR1;
			float _CEL1SIZE;
			float _CEL1POWER;
			float _CEL2SIZE;
			float _CEL2POWER;
			float _CEL3SIZE;
			float _CEL3POWER;
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
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":714,"pos":[-15992.46,563.8831],"params":["Inherit","False","439.4697","254.3918","Comment","1","724","","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":713,"pos":[-16030.87,83.65945],"params":["Inherit","False","483.4482","271.3363","Comment","1","722","","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":720,"pos":[-15283.12,84.74319],"params":["Inherit","False","1271.642","720.5787","Comment","10","737","733","730","729","728","727","726","725","723","721","FEATHERS COLORS","0.735849,0.7152051,0.3158597,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":715,"pos":[-13927.46,82.72341],"params":["Inherit","False","2359.399","774.7212","Comment","19","761","758","756","754","752","751","750","749","748","745","744","742","741","740","739","738","736","734","731","CLOTH COLORS","0.4690726,0.7830189,0.47128,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":716,"pos":[-11420.16,62.59231],"params":["Inherit","False","2539.317","705.8575","Comment","20","782","779","776","773","772","771","768","767","766","764","763","760","759","757","755","753","747","746","743","735","LEATHER COLORS","0.7735849,0.5371538,0.1788003,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":717,"pos":[-8576.588,59.73391],"params":["Inherit","False","2541.828","775.4952","Comment","20","803","799","796","794","793","791","788","787","785","783","781","780","778","777","775","774","770","769","765","762","METAL COLORS","0.259434,0.8569208,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":718,"pos":[-5429.199,76.74099],"params":["Inherit","False","1932.122","803.2549","Comment","15","815","814","811","810","808","807","802","801","798","797","795","792","789","786","784","LIPS - SCARS - SCLERA COLORS","1,1,1,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":24,"pos":[-1812.858,-1400.5],"params":["Inherit","False","1262.249","589.4722","","10","16","18","26","25","17","9","10","290","293","294","COAT OF ARMS","1,0,0.7651567,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":719,"pos":[-3292.328,102.2051],"params":["Inherit","False","2291.459","750.2154","Comment","15","823","822","821","820","819","818","817","816","813","812","809","806","804","800","790","SKIN - HAIR - EYES COLORS","1,0,0,1","0","0"]}
{"type":"AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor","id":360,"pos":[-2384.559,956.9141],"params":["Inherit","False","2541.61","1272.682","Comment","32","379","662","663","661","686","559","560","390","683","687","688","684","685","374","371","370","369","367","368","365","364","366","362","361","363","689","690","695","697","699","700","701","TOON","0.990566,0.1822268,0.8019541,1","0","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":721,"pos":[-15217.29,631.9681],"params":["Inherit","False","Constant","_Color28","Color 27","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,1,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor","id":722,"pos":[-15932.07,128.9046],"params":["Inherit","True","Property","_TextureSample3","Texture Sample 2","32","1","[HideInInspector]","Create","True","0","0","0","False","0","False","","-1","f7390e40451b1494fbe67eb39e53d4ec","f7390e40451b1494fbe67eb39e53d4ec","True","0","False","white","Auto","False","Object","-1","Auto","Texture2D","False","8","0","SAMPLER2D","","False","1","FLOAT2","0,0","False","2","FLOAT","0","False","3","FLOAT2","0,0","False","4","FLOAT2","0,0","False","5","FLOAT","1","False","6","FLOAT","0","False","7","SAMPLERSTATE","","False","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":723,"pos":[-15207.44,146.0448],"params":["Inherit","False","Property","_FEATHERS2COLOR1","FEATHERS 2 COLOR","30","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.6792453,0,0,0","0.6792453,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor","id":724,"pos":[-15918.78,599.306],"params":["Inherit","True","Property","_TextureSample1","Texture Sample 0","31","1","[HideInInspector]","Create","True","0","0","0","False","0","False","","-1","6bb85a5d9f66498428d452f1d30c189c","6bb85a5d9f66498428d452f1d30c189c","True","0","False","white","Auto","False","Object","-1","Auto","Texture2D","False","8","0","SAMPLER2D","","False","1","FLOAT2","0,0","False","2","FLOAT","0","False","3","FLOAT2","0,0","False","4","FLOAT2","0,0","False","5","FLOAT","1","False","6","FLOAT","0","False","7","SAMPLERSTATE","","False","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":725,"pos":[-14973.4,612.2277],"params":["Inherit","True","Color Mask","-1","","112","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":726,"pos":[-14662.44,142.0448],"params":["Inherit","False","Property","_FEATHERS1COLOR1","FEATHERS 1 COLOR","29","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.7735849,0.492613,0.492613,0","0.7735849,0.492613,0.492613,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":727,"pos":[-14943.84,127.6043],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":728,"pos":[-14679.29,624.9681],"params":["Inherit","False","Constant","_Color27","Color 26","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,1,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":732,"pos":[-13927.79,652.941],"params":["Inherit","False","Constant","_Color26","Color 25","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":730,"pos":[-14367.03,132.6664],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":733,"pos":[-14440.32,610.5724],"params":["Inherit","True","Color Mask","-1","","113","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":729,"pos":[-14760.43,331.0778],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":731,"pos":[-13887.35,177.7767],"params":["Inherit","False","Property","_CLOTH4COLOR1","CLOTH 4 COLOR","28","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.2011392,0.3773585,0.3739074,0","0.9056604,0.6815338,0.4229263,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":734,"pos":[-13371.38,631.2274],"params":["Inherit","False","Constant","_Color25","Color 24","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,1,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":736,"pos":[-13606.99,152.3287],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":737,"pos":[-14183.66,340.3929],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":738,"pos":[-13651.44,616.4454],"params":["Inherit","True","Color Mask","-1","","114","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":739,"pos":[-13415.9,150.2664],"params":["Inherit","False","Property","_CLOTH3COLOR1","CLOTH 3 COLOR","27","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.3962264,0.3391397,0.2710039,0","0.9056604,0.6815338,0.4229263,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":742,"pos":[-12797.08,158.3336],"params":["Inherit","False","Property","_CLOTH2COLOR1","CLOTH 2 COLOR","26","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,0","1,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":741,"pos":[-12766.9,635.0768],"params":["Inherit","False","Constant","_Color24","Color 23","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,1,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":745,"pos":[-13436.17,379.7128],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":740,"pos":[-13145.61,615.8624],"params":["Inherit","True","Color Mask","-1","","115","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":744,"pos":[-13125.1,132.7235],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":752,"pos":[-12512.24,135.1024],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":751,"pos":[-12203.1,157.1312],"params":["Inherit","False","Property","_CLOTH1COLOR1","CLOTH 1 COLOR","25","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0,0.1792453,0.05062231,0","0,0.1142961,0.1698113,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":750,"pos":[-12949.28,353.1078],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":748,"pos":[-12240.9,637.0768],"params":["Inherit","False","Constant","_Color23","Color 22","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0.4980392,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":749,"pos":[-12537.79,617.9735],"params":["Inherit","True","Color Mask","-1","","124","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":758,"pos":[-11969.11,618.0704],"params":["Inherit","True","Color Mask","-1","","126","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":756,"pos":[-11935.42,140.1644],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":754,"pos":[-12328.83,338.5758],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":735,"pos":[-11311.61,649.3312],"params":["Inherit","False","Constant","_Color22","Color 21","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0.4980392,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":757,"pos":[-11279.49,140.4166],"params":["Inherit","False","Property","_LEATHER4COLOR1","LEATHER 4 COLOR","24","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.1698113,0.04637412,0.02963688,1","0.1698113,0.04637412,0.02963688,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":763,"pos":[-10709.72,147.6256],"params":["Inherit","False","Property","_LEATHER3COLOR1","LEATHER 3 COLOR","23","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.1698113,0.04637412,0.02963688,1","0.1698113,0.04637412,0.02963688,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":743,"pos":[-11040.97,621.3073],"params":["Inherit","True","Color Mask","-1","","127","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":761,"pos":[-11752.06,347.891],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":746,"pos":[-10726.61,642.3312],"params":["Inherit","False","Constant","_Color21","Color 20","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,1,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":764,"pos":[-11012.91,115.8241],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":747,"pos":[-10460.7,623.1163],"params":["Inherit","True","Color Mask","-1","","128","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":753,"pos":[-10071.61,641.3312],"params":["Inherit","False","Constant","_Color20","Color 19","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":768,"pos":[-10118.34,150.9977],"params":["Inherit","False","Property","_LEATHER2COLOR1","LEATHER 2 COLOR","22","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4245283,0.190437,0.09011215,1","0.4245283,0.190437,0.09011215,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":766,"pos":[-10842.84,355.9518],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":767,"pos":[-10443.14,123.0333],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":771,"pos":[-10262.07,338.161],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":759,"pos":[-9804.076,626.6273],"params":["Inherit","True","Color Mask","-1","","129","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":773,"pos":[-9825.023,120.1558],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":772,"pos":[-9528.34,143.9977],"params":["Inherit","False","Property","_LEATHER1COLOR1","LEATHER 1 COLOR","21","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4811321,0.2041155,0.08851016,1","0.4811321,0.2041155,0.08851016,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":755,"pos":[-9547.609,642.3312],"params":["Inherit","False","Constant","_Color19","Color 18","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0.4980392,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":760,"pos":[-9306.664,628.1376],"params":["Inherit","True","Color Mask","-1","","130","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":779,"pos":[-9248.209,125.2181],"params":["Inherit","True","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":762,"pos":[-8394.195,597.5253],"params":["Inherit","False","Constant","_Color18","Color 17","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0.4980392,1,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":776,"pos":[-9641.617,335.8553],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":777,"pos":[-8372.627,128.2391],"params":["Inherit","False","Property","_METAL4COLOR1","METAL 4 COLOR","20","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4383232,0.4383232,0.4716981,0","0.9528302,0.9528302,0.9528302,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":783,"pos":[-7860.932,128.5431],"params":["Inherit","False","Property","_METAL3COLOR1","METAL 3 COLOR","19","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4383232,0.4383232,0.4716981,0","0.9528302,0.9528302,0.9528302,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":782,"pos":[-9064.844,332.9442],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":765,"pos":[-8123.002,582.6984],"params":["Inherit","True","Color Mask","-1","","131","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":781,"pos":[-8071.521,119.1009],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":769,"pos":[-7832.06,610.1915],"params":["Inherit","False","Constant","_Color17","Color 16","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0.4980392,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":770,"pos":[-7216.364,613.3094],"params":["Inherit","False","Constant","_Color16","Color 15","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":787,"pos":[-7550.363,109.9341],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":788,"pos":[-7895.707,339.4852],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":774,"pos":[-7576.477,583.6781],"params":["Inherit","True","Color Mask","-1","","132","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":785,"pos":[-7197.117,114.9959],"params":["Inherit","False","Property","_METAL2COLOR1","METAL 2 COLOR","18","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.4674706,0.4677705,0.5188679,0","0.3301887,0.3301887,0.3301887,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":793,"pos":[-6629.755,84.15578],"params":["Inherit","False","Property","_METAL1COLOR1","METAL 1 COLOR","17","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.8792791,0.9922886,1.007606,0","2,0.682353,0.1960784,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":791,"pos":[-6937.502,112.3133],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":778,"pos":[-6721.364,612.3094],"params":["Inherit","False","Constant","_Color15","Color 14","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":794,"pos":[-7374.548,330.3185],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":775,"pos":[-6975.905,589.6952],"params":["Inherit","True","Color Mask","-1","","133","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":799,"pos":[-6754.095,315.7865],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":796,"pos":[-6360.688,117.3753],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":798,"pos":[-5296.699,144.348],"params":["Inherit","False","Property","_OTHERCOLOR1","OTHER COLOR","15","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.5188679,0.4637216,0.3206212,0","0.8490566,0.5037117,0.3884835,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":784,"pos":[-5313.053,610.7535],"params":["Inherit","False","Constant","_Color14","Color 13","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,1,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":780,"pos":[-6464.14,593.1395],"params":["Inherit","True","Color Mask","-1","","134","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":801,"pos":[-5018.789,142.1561],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":789,"pos":[-5080.262,601.6461],"params":["Inherit","True","Color Mask","-1","","135","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":802,"pos":[-4655.907,91.4075],"params":["Inherit","False","Property","_LIPSCOLOR1","LIPS COLOR","13","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.8301887,0.3185886,0.2780349,0","0.8301887,0.3185886,0.2780349,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":803,"pos":[-6177.323,325.1014],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":786,"pos":[-4799.532,610.7535],"params":["Inherit","False","Constant","_Color13","Color 12","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0.4980392,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor","id":10,"pos":[-1769.44,-1325.746],"params":["Inherit","True","Property","_COATOFARMSMASK","COAT OF ARMS MASK","2","1","[NoScaleOffset]","Create","True","0","0","0","False","0","False","","-1","None","None","True","1","False","black","Auto","False","Object","-1","Auto","Texture2D","False","8","0","SAMPLER2D","","False","1","FLOAT2","0,0","False","2","FLOAT","0","False","3","FLOAT2","0,0","False","4","FLOAT2","0,0","False","5","FLOAT","1","False","6","FLOAT","0","False","7","SAMPLERSTATE","","False","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":792,"pos":[-4228.064,637.2845],"params":["Inherit","False","Constant","_Color12","Color 11","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0.4980392,0.4980392,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":807,"pos":[-4847.907,299.4076],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":808,"pos":[-4383.907,123.4076],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":795,"pos":[-4541.546,591.6554],"params":["Inherit","True","Color Mask","-1","","136","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":810,"pos":[-4079.907,107.4075],"params":["Inherit","False","Property","_SCLERACOLOR1","SCLERA COLOR","10","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.9056604,0.8159487,0.8159487,0","0.9056604,0.8159487,0.8159487,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":811,"pos":[-4239.907,299.4076],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":812,"pos":[-2826.188,157.8355],"params":["Inherit","False","Property","_EYESCOLOR1","EYES COLOR","4","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","0.0734529,0.1320755,0.05046281,1","0.0734529,0.1320755,0.05046281,1","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":814,"pos":[-3807.906,123.4076],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":797,"pos":[-3918.423,624.0341],"params":["Inherit","True","Color Mask","-1","","137","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":790,"pos":[-2969.373,587.4012],"params":["Inherit","False","Constant","_Color9","Color 8","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor","id":9,"pos":[-1435.856,-1221.265],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":815,"pos":[-3663.905,299.4076],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":26,"pos":[-1063.837,-1185.19],"params":["Inherit","False","Property","_COATOFARMSCOLOR","COAT OF ARMS COLOR","1","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,0","1,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":817,"pos":[-2488.186,135.877],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor","id":18,"pos":[-1043.557,-1002.802],"params":["Inherit","False","Constant","_Vector0","Vector 0","1","0","Create","True","0","0","0","False","0","False","Object","-1","","1.6,1","0,0","0","3","FLOAT2","0","FLOAT","1","FLOAT","2"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":800,"pos":[-2677.48,569.6414],"params":["Inherit","True","Color Mask","-1","","138","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":804,"pos":[-2294.182,594.7792],"params":["Inherit","False","Constant","_Color10","Color 9","53","0","Create","True","0","0","0","False","0","False","Object","-1","","1,0.4980392,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":25,"pos":[-1067.646,-1364.901],"params":["Inherit","False","Constant","_Color4","Color 4","1","0","Create","True","0","0","0","False","0","False","Object","-1","","0,0,0,0","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":816,"pos":[-2187.755,151.8919],"params":["Inherit","False","Property","_HAIRCOLOR1","HAIR COLOR","7","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,0,0,0","0.2735849,0.213428,0.1432449,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor","id":16,"pos":[-1249.699,-965.4095],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":294,"pos":[-644.1989,-930.3562],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":806,"pos":[-1685.014,598.4681],"params":["Inherit","False","Constant","_Color11","Color 10","53","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4980392,0,0,1","0,0,0,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":17,"pos":[-814.7589,-1227.691],"params":["Inherit","False","Replace Color","-1","","139","896dccb3016c847439def376a728b869","1,12,0","5","1","COLOR","0,0,0,0","False","2","COLOR","0,0,0,0","False","3","COLOR","0,0,0,0","False","4","FLOAT","0","False","5","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":818,"pos":[-1631.842,144.4456],"params":["Inherit","False","Property","_SKINCOLOR1","SKIN COLOR","0","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","2.02193,1.0081,0.6199315,0","2.02193,1.0081,0.6199315,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":819,"pos":[-1834.258,138.4847],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":820,"pos":[-2331.755,311.8919],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":809,"pos":[-2043.755,579.5519],"params":["Inherit","True","Color Mask","-1","","140","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":363,"pos":[-2264.815,1559.836],"params":["Inherit","False","Constant","_Float3","Float 3","31","0","Create","True","0","0","0","False","0","False","Object","-1","","1","0","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":361,"pos":[-2262.561,1359.56],"params":["Inherit","False","Constant","_1","1","32","0","Create","True","0","0","0","False","0","False","Object","-1","","1","0.3","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor","id":822,"pos":[-1355.756,135.8919],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":293,"pos":[-633.4137,-898.618],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":362,"pos":[-2290.99,1147.003],"params":["Inherit","False","Constant","_2","2","35","0","Create","True","0","0","0","False","0","False","Object","-1","","1","0.3991557","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FunctionNode, AmplifyShaderEditor","id":813,"pos":[-1428.671,581.6993],"params":["Inherit","True","Color Mask","-1","","141","eec747d987850564c95bde0e5a6d1867","0","4","1","FLOAT3","0,0,0","False","3","FLOAT3","0,0,0","False","4","FLOAT","0.1","False","5","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":821,"pos":[-1736.424,317.5475],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":290,"pos":[-633.3123,-1147.438],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FresnelNode, AmplifyShaderEditor","id":369,"pos":[-1956.678,1036.234],"params":["Inherit","False","Standard","WorldNormal","ViewDir","True","True","5","0","FLOAT3","0,0,1","False","4","FLOAT3","0,0,0","False","1","FLOAT","0","False","2","FLOAT","1","False","3","FLOAT","5","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":367,"pos":[-1763.215,1206.693],"params":["Inherit","False","Property","_CEL1SIZE","CEL 1 SIZE","3","0","Create","True","0","0","0","False","0","False","Object","-1","","0.1","0.45","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":366,"pos":[-1764.589,1647.723],"params":["Inherit","False","Property","_CEL3SIZE","CEL 3 SIZE","6","0","Create","True","0","0","0","False","0","False","Object","-1","","0.8","0.706","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":364,"pos":[-1744.519,1402.56],"params":["Inherit","False","Property","_CEL2SIZE","CEL 2 SIZE","5","0","Create","True","0","0","0","False","0","False","Object","-1","","0.4","0.243","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":291,"pos":[-617.0846,363.4227],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.FresnelNode, AmplifyShaderEditor","id":365,"pos":[-1958.192,1272.703],"params":["Inherit","False","Standard","WorldNormal","ViewDir","False","False","5","0","FLOAT3","0,0,1","False","4","FLOAT3","0,0,0","False","1","FLOAT","0","False","2","FLOAT","1","False","3","FLOAT","5","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":292,"pos":[-620.0846,401.4227],"params":["Inherit","False","1","0","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.FresnelNode, AmplifyShaderEditor","id":368,"pos":[-1997.462,1519.467],"params":["Inherit","False","Standard","WorldNormal","ViewDir","False","False","5","0","FLOAT3","0,0,1","False","4","FLOAT3","0,0,0","False","1","FLOAT","0","False","2","FLOAT","1","False","3","FLOAT","5","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":823,"pos":[-1147.756,311.8919],"params":["Inherit","True","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.LerpOp, AmplifyShaderEditor","id":64,"pos":[-588.6503,335.5556],"params":["Inherit","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.StepOpNode, AmplifyShaderEditor","id":370,"pos":[-1455.669,1593.09],"params":["Inherit","False","2","0","FLOAT","0","False","1","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":695,"pos":[-1338.313,1422.022],"params":["Inherit","False","Property","_CEL2COLOR","CEL 2 COLOR","14","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,1,1,0","1,1,1,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":688,"pos":[-1102.397,1725.987],"params":["Inherit","False","Property","_CEL3POWER","CEL 3 POWER","11","0","Create","True","0","0","0","False","0","False","Object","-1","","0.15","0.247","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.StepOpNode, AmplifyShaderEditor","id":374,"pos":[-1422.798,1338.325],"params":["Inherit","False","2","0","FLOAT","0","False","1","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":697,"pos":[-1341.959,1671.755],"params":["Inherit","False","Property","_CEL3COLOR","CEL 3 COLOR","16","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,1,1,0","1,1,1,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.StepOpNode, AmplifyShaderEditor","id":371,"pos":[-1481.249,1063.553],"params":["Inherit","False","2","0","FLOAT","0","False","1","FLOAT","0","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.ColorNode, AmplifyShaderEditor","id":690,"pos":[-1382.336,1176.092],"params":["Inherit","False","Property","_CEL1COLOR","CEL 1 COLOR","12","1","[HDR]","Create","True","0","0","0","False","0","False","Object","-1","","1,1,1,0","1,1,1,0","True","True","0","6","COLOR","0","FLOAT","1","FLOAT","2","FLOAT","3","FLOAT","4","FLOAT3","5"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":685,"pos":[-1116.953,1474.047],"params":["Inherit","False","Property","_CEL2POWER","CEL 2 POWER","9","0","Create","True","0","0","0","False","0","False","Object","-1","","0.15","0.206","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor","id":684,"pos":[-1152.591,1217.51],"params":["Inherit","False","Property","_CEL1POWER","CEL 1 POWER","8","0","Create","True","0","0","0","False","0","False","Object","-1","","0.15","0.22","0","1","0","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor","id":699,"pos":[-868.8555,1208.175],"params":["Inherit","False","5","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","1","False","3","FLOAT","0","False","4","FLOAT","3","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":395,"pos":[-405.1466,381.3712],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":394,"pos":[-405.1466,380.3712],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor","id":700,"pos":[-848.9835,1463.261],"params":["Inherit","False","5","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","1","False","3","FLOAT","0","False","4","FLOAT","3","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":396,"pos":[-404.1466,380.3712],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.TFHCRemapNode, AmplifyShaderEditor","id":701,"pos":[-822.0625,1730.397],"params":["Inherit","False","5","0","FLOAT","0","False","1","FLOAT","0","False","2","FLOAT","1","False","3","FLOAT","0","False","4","FLOAT","3","False","1","FLOAT","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":698,"pos":[-1118.693,1581.753],"params":["Inherit","False","Multiply","True","3","0","FLOAT","0","False","1","COLOR","0,0,0,0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":696,"pos":[-1115.047,1332.02],"params":["Inherit","False","Multiply","True","3","0","FLOAT","0","False","1","COLOR","0,0,0,0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":689,"pos":[-1114.33,1075.988],"params":["Inherit","False","Multiply","True","3","0","FLOAT","0","False","1","COLOR","0,0,0,0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":560,"pos":[-404.1298,1339.633],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":686,"pos":[-704.9259,1334.608],"params":["Inherit","False","Multiply","False","3","0","COLOR","0,0,0,0","False","1","FLOAT","0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":687,"pos":[-694.37,1584.548],"params":["Inherit","False","Multiply","False","3","0","COLOR","0,0,0,0","False","1","FLOAT","0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":390,"pos":[-409.3758,1069.185],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":683,"pos":[-760.7569,1072.747],"params":["Inherit","False","Multiply","False","3","0","COLOR","0,0,0,0","False","1","FLOAT","0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.WireNode, AmplifyShaderEditor","id":559,"pos":[-412.1298,1549.633],"params":["Inherit","False","1","0","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":663,"pos":[-359.8096,1571.366],"params":["Inherit","False","Multiply","True","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":661,"pos":[-351.4232,1095.355],"params":["Inherit","False","Multiply","False","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.BlendOpsNode, AmplifyShaderEditor","id":662,"pos":[-345.4095,1304.167],"params":["Inherit","False","Multiply","True","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","FLOAT","1","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor","id":379,"pos":[-48.5603,1282.605],"params":["Inherit","False","3","3","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","2","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor","id":382,"pos":[501.8256,334.2374],"params":["Inherit","False","2","2","0","COLOR","0,0,0,0","False","1","COLOR","0,0,0,0","False","1","COLOR","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":824,"pos":[765.0967,296.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","ExtraPrePass","0","0","ExtraPrePass","6","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","0","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","0","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":825,"pos":[765.0967,296.2389],"params":["Float","False","True","-1","2","UnityEditor.ShaderGraphLitGUI","0","15","Polytope Studio/ PT_Medieval Modular NPC Shader Toon","94348b07e5e8bab40bd6c8a1e3df54cd","True","ForwardLit","0","1","ForwardLit","22","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","1","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","1","LightMode=UniversalForward","False","False","0","Hidden/InternalErrorShader","0","0","Standard","55","Category","0","0","  Instanced Terrain Normals","1","0","Lighting Model","0","0","Workflow","1","0","Surface","0","0","  Keep Alpha","0","0","  Refraction Model","0","0","  Blend","0","0","  Receive Fog","1","0","Two Sided","1","0","Alpha Clipping","1","0","  Use Shadow Threshold","0","0","Fragment Normal Space","0","0","Forward Only","0","0","  Keep GBuffer","0","0","Transmission","0","0","  Transmission Shadow","0.5,False,","0","Translucency","0","0","  Translucency Strength","1,False,","0","  Normal Distortion","0.5,False,","0","  Scattering","2,False,","0","  Direct","0.9,False,","0","  Ambient","0.1,False,","0","  Shadow","0.5,False,","0","Cast Shadows","1","0","Receive Shadows","1","0","Specular Highlights","2","0","Environment Reflections","2","0","Screen Space Reflections","2","0","Receive SSAO","1","0","Motion Vectors","1","0","  Additional Motion Vectors","1","0","  Alembic Motion Vectors","0","0","  XR Motion Vectors","0","0","GPU Instancing","1","0","LOD CrossFade","1","0","Built-in Fog","1","0","_FinalColorxAlpha","0","0","Meta Pass","1","0","Override Baked GI","0","0","Extra Pre Pass","0","0","Tessellation","0","0","  Phong","0","0","  Strength","0.5,False,","0","  Type","0","0","  Tess","16,False,","0","  Min","10,False,","0","  Max","25,False,","0","  Edge Length","16,False,","0","  Max Displacement","25,False,","0","Write Depth","0","0","  Conservative","0","0","Vertex Position","1","0","Debug Display","0","0","Clear Coat","0","0","0","12","False","True","True","True","True","True","True","True","True","True","True","False","False","","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":826,"pos":[765.0967,296.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","ShadowCaster","0","2","ShadowCaster","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","False","False","True","False","False","False","False","0","False","","False","False","False","False","False","False","False","False","False","True","1","False","","True","3","False","","False","False","True","1","LightMode=ShadowCaster","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":827,"pos":[765.0967,296.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","DepthOnly","0","3","DepthOnly","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","False","False","True","False","False","False","False","0","False","","False","False","False","False","False","False","False","False","False","True","1","False","","False","False","False","True","1","LightMode=DepthOnly","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":828,"pos":[765.0967,296.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","Meta","0","4","Meta","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","2","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=Meta","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":829,"pos":[765.0967,296.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","Universal2D","0","5","Universal2D","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","1","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","False","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","1","LightMode=Universal2D","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":830,"pos":[765.0967,296.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","DepthNormals","0","6","DepthNormals","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","0","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","False","","True","3","False","","False","False","True","1","LightMode=DepthNormals","False","False","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":831,"pos":[765.0967,296.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","GBuffer","0","7","GBuffer","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","True","1","1","False","","0","False","","1","1","False","","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","False","True","1","LightMode=UniversalGBuffer","False","True","12","d3d11","gles","metal","vulkan","xboxone","xboxseries","playstation","ps4","ps5","switch","switch2","webgpu","0","Hidden/InternalErrorShader","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":832,"pos":[765.0967,376.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","SceneSelectionPass","0","8","SceneSelectionPass","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","2","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=SceneSelectionPass","False","False","0","","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":833,"pos":[765.0967,376.2389],"params":["Float","False","False","-1","2","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","ScenePickingPass","0","9","ScenePickingPass","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=Picking","False","False","0","","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":834,"pos":[765.0967,396.2389],"params":["Float","False","False","-1","3","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","MotionVectors","0","10","MotionVectors","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","False","False","0","False","","False","False","False","False","False","False","False","False","False","False","False","False","False","True","1","LightMode=MotionVectors","False","False","0","","0","0","Standard","0","False","0"]}
{"type":"AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor","id":835,"pos":[765.0967,406.2389],"params":["Float","False","False","-1","3","UnityEditor.ShaderGraphLitGUI","0","1","New Amplify Shader","94348b07e5e8bab40bd6c8a1e3df54cd","True","XRMotionVectors","0","11","XRMotionVectors","0","False","False","False","False","False","False","False","False","False","False","False","False","True","0","False","","False","True","0","False","","False","False","False","False","False","False","False","False","False","True","False","0","False","","255","False","","255","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","True","1","False","","True","3","False","","True","True","0","False","","0","False","","True","1","False","","True","4","RenderPipeline=UniversalPipeline","RenderType=Opaque=RenderType","Queue=Geometry=Queue=0","UniversalMaterialType=Lit","True","5","True","14","all","0","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","False","True","True","True","True","True","0","False","","False","False","False","False","False","False","False","True","True","1","False","","255","False","","1","False","","7","False","","3","False","","0","False","","0","False","","0","False","","0","False","","0","False","","0","False","","False","False","False","False","False","True","1","LightMode=XRMotionVectors","False","False","0","","0","0","Standard","0","True","0"]}
{"wire":[725,1,724,0]}
{"wire":[725,3,721,0]}
{"wire":[727,0,722,0]}
{"wire":[727,1,723,0]}
{"wire":[730,0,722,0]}
{"wire":[730,1,726,0]}
{"wire":[733,1,724,0]}
{"wire":[733,3,728,0]}
{"wire":[729,1,727,0]}
{"wire":[729,2,725,0]}
{"wire":[736,0,722,0]}
{"wire":[736,1,731,0]}
{"wire":[737,0,729,0]}
{"wire":[737,1,730,0]}
{"wire":[737,2,733,0]}
{"wire":[738,1,724,0]}
{"wire":[738,3,732,0]}
{"wire":[745,0,737,0]}
{"wire":[745,1,736,0]}
{"wire":[745,2,738,0]}
{"wire":[740,1,724,0]}
{"wire":[740,3,734,0]}
{"wire":[744,0,722,0]}
{"wire":[744,1,739,0]}
{"wire":[752,0,722,0]}
{"wire":[752,1,742,0]}
{"wire":[750,0,745,0]}
{"wire":[750,1,744,0]}
{"wire":[750,2,740,0]}
{"wire":[749,1,724,0]}
{"wire":[749,3,741,0]}
{"wire":[758,1,724,0]}
{"wire":[758,3,748,0]}
{"wire":[756,0,722,0]}
{"wire":[756,1,751,0]}
{"wire":[754,0,750,0]}
{"wire":[754,1,752,0]}
{"wire":[754,2,749,0]}
{"wire":[743,1,724,0]}
{"wire":[743,3,735,0]}
{"wire":[761,0,754,0]}
{"wire":[761,1,756,0]}
{"wire":[761,2,758,0]}
{"wire":[764,0,722,0]}
{"wire":[764,1,757,0]}
{"wire":[747,1,724,0]}
{"wire":[747,3,746,0]}
{"wire":[766,0,761,0]}
{"wire":[766,1,764,0]}
{"wire":[766,2,743,0]}
{"wire":[767,0,722,0]}
{"wire":[767,1,763,0]}
{"wire":[771,0,766,0]}
{"wire":[771,1,767,0]}
{"wire":[771,2,747,0]}
{"wire":[759,1,724,0]}
{"wire":[759,3,753,0]}
{"wire":[773,0,722,0]}
{"wire":[773,1,768,0]}
{"wire":[760,1,724,0]}
{"wire":[760,3,755,0]}
{"wire":[779,0,722,0]}
{"wire":[779,1,772,0]}
{"wire":[776,0,771,0]}
{"wire":[776,1,773,0]}
{"wire":[776,2,759,0]}
{"wire":[782,0,776,0]}
{"wire":[782,1,779,0]}
{"wire":[782,2,760,0]}
{"wire":[765,1,724,0]}
{"wire":[765,3,762,0]}
{"wire":[781,0,722,0]}
{"wire":[781,1,777,0]}
{"wire":[787,0,722,0]}
{"wire":[787,1,783,0]}
{"wire":[788,0,782,0]}
{"wire":[788,1,781,0]}
{"wire":[788,2,765,0]}
{"wire":[774,1,724,0]}
{"wire":[774,3,769,0]}
{"wire":[791,0,722,0]}
{"wire":[791,1,785,0]}
{"wire":[794,0,788,0]}
{"wire":[794,1,787,0]}
{"wire":[794,2,774,0]}
{"wire":[775,1,724,0]}
{"wire":[775,3,770,0]}
{"wire":[799,0,794,0]}
{"wire":[799,1,791,0]}
{"wire":[799,2,775,0]}
{"wire":[796,0,722,0]}
{"wire":[796,1,793,0]}
{"wire":[780,1,724,0]}
{"wire":[780,3,778,0]}
{"wire":[801,0,722,0]}
{"wire":[801,1,798,0]}
{"wire":[789,1,724,0]}
{"wire":[789,3,784,0]}
{"wire":[803,0,799,0]}
{"wire":[803,1,796,0]}
{"wire":[803,2,780,0]}
{"wire":[807,0,803,0]}
{"wire":[807,1,801,0]}
{"wire":[807,2,789,0]}
{"wire":[808,0,722,0]}
{"wire":[808,1,802,0]}
{"wire":[795,1,724,0]}
{"wire":[795,3,786,0]}
{"wire":[811,0,807,0]}
{"wire":[811,1,808,0]}
{"wire":[811,2,795,0]}
{"wire":[814,0,722,0]}
{"wire":[814,1,810,0]}
{"wire":[797,1,724,0]}
{"wire":[797,3,792,0]}
{"wire":[9,0,10,4]}
{"wire":[815,0,811,0]}
{"wire":[815,1,814,0]}
{"wire":[815,2,797,0]}
{"wire":[817,0,722,0]}
{"wire":[817,1,812,0]}
{"wire":[800,1,724,0]}
{"wire":[800,3,790,0]}
{"wire":[16,0,9,0]}
{"wire":[294,0,16,0]}
{"wire":[17,1,9,0]}
{"wire":[17,2,25,0]}
{"wire":[17,3,26,0]}
{"wire":[17,4,18,1]}
{"wire":[17,5,18,2]}
{"wire":[819,0,722,0]}
{"wire":[819,1,816,0]}
{"wire":[820,0,815,0]}
{"wire":[820,1,817,0]}
{"wire":[820,2,800,0]}
{"wire":[809,1,724,0]}
{"wire":[809,3,804,0]}
{"wire":[822,0,722,0]}
{"wire":[822,1,818,0]}
{"wire":[293,0,294,0]}
{"wire":[813,1,724,0]}
{"wire":[813,3,806,0]}
{"wire":[821,0,820,0]}
{"wire":[821,1,819,0]}
{"wire":[821,2,809,0]}
{"wire":[290,0,17,0]}
{"wire":[369,3,362,0]}
{"wire":[291,0,290,0]}
{"wire":[365,3,361,0]}
{"wire":[292,0,293,0]}
{"wire":[368,3,363,0]}
{"wire":[823,0,821,0]}
{"wire":[823,1,822,0]}
{"wire":[823,2,813,0]}
{"wire":[64,0,823,0]}
{"wire":[64,1,291,0]}
{"wire":[64,2,292,0]}
{"wire":[370,0,368,0]}
{"wire":[370,1,366,0]}
{"wire":[374,0,365,0]}
{"wire":[374,1,364,0]}
{"wire":[371,0,369,0]}
{"wire":[371,1,367,0]}
{"wire":[699,0,684,0]}
{"wire":[395,0,64,0]}
{"wire":[394,0,64,0]}
{"wire":[700,0,685,0]}
{"wire":[396,0,64,0]}
{"wire":[701,0,688,0]}
{"wire":[698,0,370,0]}
{"wire":[698,1,697,0]}
{"wire":[696,0,374,0]}
{"wire":[696,1,695,0]}
{"wire":[689,0,371,0]}
{"wire":[689,1,690,0]}
{"wire":[560,0,395,0]}
{"wire":[686,0,696,0]}
{"wire":[686,1,700,0]}
{"wire":[687,0,698,0]}
{"wire":[687,1,701,0]}
{"wire":[390,0,396,0]}
{"wire":[683,0,689,0]}
{"wire":[683,1,699,0]}
{"wire":[559,0,394,0]}
{"wire":[663,0,687,0]}
{"wire":[663,1,559,0]}
{"wire":[661,0,683,0]}
{"wire":[661,1,390,0]}
{"wire":[662,0,686,0]}
{"wire":[662,1,560,0]}
{"wire":[379,0,661,0]}
{"wire":[379,1,662,0]}
{"wire":[379,2,663,0]}
{"wire":[382,0,64,0]}
{"wire":[382,1,379,0]}
{"wire":[825,2,382,0]}
ASEEND*/
//CHKSM=5AD142B4A1BF8754367BFC4AC8497759DA018A5B