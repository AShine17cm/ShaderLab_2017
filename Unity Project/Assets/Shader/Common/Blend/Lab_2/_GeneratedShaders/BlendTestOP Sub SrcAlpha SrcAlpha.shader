Shader "Hidden/Shader/Common/BlendTestOp233"
{
    Properties {
        _DstTex ("DstTex", 2D) ="white"{}
        _SrcTex ("SrcTex", 2D) ="white"{}
    }
    SubShader {
        Pass{
            SetTexture[_DstTex] {combine texture}
        }
        Pass {
            BlendOp Sub
            Blend SrcAlpha SrcAlpha
            SetTexture [_SrcTex] { combine texture}
        }
    }
}
