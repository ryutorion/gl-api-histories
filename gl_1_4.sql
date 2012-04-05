-- OpenGL 1.4
-- versions {{{
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 4);
-- }}}

-- histories before 1.4 {{{
INSERT INTO histories
  SELECT apis.id, versions.id, 1 FROM apis, versions
    WHERE versions.name IS 'GL' AND versions.major == 1 AND versions.minor == 4;

UPDATE histories SET status = 0 WHERE
  histories.version_id IN (
    SELECT id from versions
    WHERE versions.name IS 'GL' AND versions.major == 1 AND versions.minor == 4
  ) AND histories.api_id IN (
    SELECT h.api_id FROM histories AS h JOIN versions AS v ON h.version_id == v.id
    WHERE v.name IS 'GL' AND v.major == 1 AND v.minor == 3 AND
      (h.status == 0 OR h.status == 4)
  );
-- }}}

-- apis {{{
BEGIN;
-- INSERT INTO apis (name) VALUES ('Accum');
-- INSERT INTO apis (name) VALUES ('ActiveTexture');
-- INSERT INTO apis (name) VALUES ('AlphaFunc');
-- INSERT INTO apis (name) VALUES ('Antialiasing');
-- INSERT INTO apis (name) VALUES ('AreTexturesResident');
-- INSERT INTO apis (name) VALUES ('ArrayElement');
-- INSERT INTO apis (name) VALUES ('Begin');
-- INSERT INTO apis (name) VALUES ('BindTexture');
-- INSERT INTO apis (name) VALUES ('Bitmap');
-- INSERT INTO apis (name) VALUES ('BlendColor');
-- INSERT INTO apis (name) VALUES ('BlendEquation');
-- INSERT INTO apis (name) VALUES ('BlendFunc');
INSERT INTO apis (name) VALUES ('BlendFuncSeparate');
-- INSERT INTO apis (name) VALUES ('CallList');
-- INSERT INTO apis (name) VALUES ('CallLists');
-- INSERT INTO apis (name) VALUES ('Clear');
-- INSERT INTO apis (name) VALUES ('ClearAccum');
-- INSERT INTO apis (name) VALUES ('ClearColor');
-- INSERT INTO apis (name) VALUES ('ClearDepth');
-- INSERT INTO apis (name) VALUES ('ClearIndex');
-- INSERT INTO apis (name) VALUES ('ClearStencil');
-- INSERT INTO apis (name) VALUES ('ClipPlane');
-- INSERT INTO apis (name) VALUES ('Color');
-- INSERT INTO apis (name) VALUES ('Color3');
-- INSERT INTO apis (name) VALUES ('Color4');
-- INSERT INTO apis (name) VALUES ('ColorMask');
-- INSERT INTO apis (name) VALUES ('ColorMaterial');
-- INSERT INTO apis (name) VALUES ('ColorPointer');
-- INSERT INTO apis (name) VALUES ('ColorSubTable');
-- INSERT INTO apis (name) VALUES ('ColorTable');
-- INSERT INTO apis (name) VALUES ('ColorTableParameter');
-- INSERT INTO apis (name) VALUES ('ColorTableParameterfv');
-- INSERT INTO apis (name) VALUES ('Colorub');
-- INSERT INTO apis (name) VALUES ('Colorui');
-- INSERT INTO apis (name) VALUES ('Colorus');
-- INSERT INTO apis (name) VALUES ('CompressedTexImage');
-- INSERT INTO apis (name) VALUES ('CompressedTexImage1D');
-- INSERT INTO apis (name) VALUES ('CompressedTexImage2D');
-- INSERT INTO apis (name) VALUES ('CompressedTexImage3D');
-- INSERT INTO apis (name) VALUES ('CompressedTexSubImage1D');
-- INSERT INTO apis (name) VALUES ('CompressedTexSubImage2D');
-- INSERT INTO apis (name) VALUES ('CompressedTexSubImage3D');
-- INSERT INTO apis (name) VALUES ('ConvolutionFilter1D');
-- INSERT INTO apis (name) VALUES ('ConvolutionFilter2D');
-- INSERT INTO apis (name) VALUES ('ConvolutionParameter');
-- INSERT INTO apis (name) VALUES ('ConvolutionParameterfv');
-- INSERT INTO apis (name) VALUES ('ConvolutionParameteriv');
-- INSERT INTO apis (name) VALUES ('CopyColorSubTable');
-- INSERT INTO apis (name) VALUES ('CopyColorTable');
-- INSERT INTO apis (name) VALUES ('CopyConvolutionFilter1D');
-- INSERT INTO apis (name) VALUES ('CopyConvolutionFilter2D');
-- INSERT INTO apis (name) VALUES ('CopyPixels');
-- INSERT INTO apis (name) VALUES ('CopyTexImage1D');
-- INSERT INTO apis (name) VALUES ('CopyTexImage2D');
-- INSERT INTO apis (name) VALUES ('CopyTexImage3D');
-- INSERT INTO apis (name) VALUES ('CopyTexSubImage1D');
-- INSERT INTO apis (name) VALUES ('CopyTexSubImage2D');
-- INSERT INTO apis (name) VALUES ('CopyTexSubImage3D');
-- INSERT INTO apis (name) VALUES ('CullFace');
-- INSERT INTO apis (name) VALUES ('DeleteLists');
-- INSERT INTO apis (name) VALUES ('DeleteTextures');
-- INSERT INTO apis (name) VALUES ('DepthFunc');
-- INSERT INTO apis (name) VALUES ('DepthMask');
-- INSERT INTO apis (name) VALUES ('DepthRange');
-- INSERT INTO apis (name) VALUES ('Disable');
-- INSERT INTO apis (name) VALUES ('DisableClientState');
-- INSERT INTO apis (name) VALUES ('DrawArrays');
-- INSERT INTO apis (name) VALUES ('DrawBuffer');
-- INSERT INTO apis (name) VALUES ('DrawElements');
-- INSERT INTO apis (name) VALUES ('DrawPixels');
-- INSERT INTO apis (name) VALUES ('DrawRangeElements');
-- INSERT INTO apis (name) VALUES ('EdgeFlag');
-- INSERT INTO apis (name) VALUES ('EdgeFlagPointer');
-- INSERT INTO apis (name) VALUES ('EdgeFlagv');
-- INSERT INTO apis (name) VALUES ('Enable');
-- INSERT INTO apis (name) VALUES ('EnableClientState');
-- INSERT INTO apis (name) VALUES ('End');
-- INSERT INTO apis (name) VALUES ('EndList');
-- INSERT INTO apis (name) VALUES ('EvalCoord');
-- INSERT INTO apis (name) VALUES ('EvalCoord1');
-- INSERT INTO apis (name) VALUES ('EvalCoord1d');
-- INSERT INTO apis (name) VALUES ('EvalCoord1f');
-- INSERT INTO apis (name) VALUES ('EvalCoord2');
-- INSERT INTO apis (name) VALUES ('EvalMesh1');
-- INSERT INTO apis (name) VALUES ('EvalMesh2');
-- INSERT INTO apis (name) VALUES ('EvalPoint');
-- INSERT INTO apis (name) VALUES ('EvalPoint1');
-- INSERT INTO apis (name) VALUES ('EvalPoint2');
-- INSERT INTO apis (name) VALUES ('FeedbackBuffer');
-- INSERT INTO apis (name) VALUES ('Finish');
-- INSERT INTO apis (name) VALUES ('Flush');
-- INSERT INTO apis (name) VALUES ('Fog');
INSERT INTO apis (name) VALUES ('FogCoord');
INSERT INTO apis (name) VALUES ('FogCoordPointer');
-- INSERT INTO apis (name) VALUES ('FrontFace');
-- INSERT INTO apis (name) VALUES ('Frustum');
-- INSERT INTO apis (name) VALUES ('GenLists');
-- INSERT INTO apis (name) VALUES ('GenTextures');
-- INSERT INTO apis (name) VALUES ('Get');
-- INSERT INTO apis (name) VALUES ('GetBooleanv');
-- INSERT INTO apis (name) VALUES ('GetClipPlane');
-- INSERT INTO apis (name) VALUES ('GetColorTable');
-- INSERT INTO apis (name) VALUES ('GetColorTableParameter');
-- INSERT INTO apis (name) VALUES ('GetCompressedTexImage');
-- INSERT INTO apis (name) VALUES ('GetConvolutionFilter');
-- INSERT INTO apis (name) VALUES ('GetConvolutionParameter');
-- INSERT INTO apis (name) VALUES ('GetConvolutionParameteriv');
-- INSERT INTO apis (name) VALUES ('GetDoublev');
-- INSERT INTO apis (name) VALUES ('GetError');
-- INSERT INTO apis (name) VALUES ('GetFloatv');
-- INSERT INTO apis (name) VALUES ('GetHistogram');
-- INSERT INTO apis (name) VALUES ('GetHistogramParameter');
-- INSERT INTO apis (name) VALUES ('GetIntegerv');
-- INSERT INTO apis (name) VALUES ('GetLight');
-- INSERT INTO apis (name) VALUES ('GetMap');
-- INSERT INTO apis (name) VALUES ('GetMaterial');
-- INSERT INTO apis (name) VALUES ('GetMinmax');
-- INSERT INTO apis (name) VALUES ('GetMinmaxParameter');
-- INSERT INTO apis (name) VALUES ('GetPixelMap');
-- INSERT INTO apis (name) VALUES ('GetPointerv');
-- INSERT INTO apis (name) VALUES ('GetPolygonStipple');
-- INSERT INTO apis (name) VALUES ('GetSeparableFilter');
-- INSERT INTO apis (name) VALUES ('GetString');
-- INSERT INTO apis (name) VALUES ('GetTexEnv');
-- INSERT INTO apis (name) VALUES ('GetTexGen');
-- INSERT INTO apis (name) VALUES ('GetTexImage');
-- INSERT INTO apis (name) VALUES ('GetTexImage1D');
-- INSERT INTO apis (name) VALUES ('GetTexImage2D');
-- INSERT INTO apis (name) VALUES ('GetTexImage3D');
-- INSERT INTO apis (name) VALUES ('GetTexLevelParameter');
-- INSERT INTO apis (name) VALUES ('GetTexParameter');
-- INSERT INTO apis (name) VALUES ('GetTexParameterfv');
-- INSERT INTO apis (name) VALUES ('GetTexParameteriv');
-- INSERT INTO apis (name) VALUES ('Hint');
-- INSERT INTO apis (name) VALUES ('Histogram');
-- INSERT INTO apis (name) VALUES ('Index');
-- INSERT INTO apis (name) VALUES ('IndexMask');
-- INSERT INTO apis (name) VALUES ('IndexPointer');
-- INSERT INTO apis (name) VALUES ('InitNames');
-- INSERT INTO apis (name) VALUES ('InterleavedArrays');
-- INSERT INTO apis (name) VALUES ('IsEnabled');
-- INSERT INTO apis (name) VALUES ('IsList');
-- INSERT INTO apis (name) VALUES ('IsTexture');
-- INSERT INTO apis (name) VALUES ('Light');
-- INSERT INTO apis (name) VALUES ('LightModel');
-- INSERT INTO apis (name) VALUES ('LineStipple');
-- INSERT INTO apis (name) VALUES ('LineWidth');
-- INSERT INTO apis (name) VALUES ('ListBase');
-- INSERT INTO apis (name) VALUES ('LoadIdentity');
-- INSERT INTO apis (name) VALUES ('LoadMatrix');
-- INSERT INTO apis (name) VALUES ('LoadName');
-- INSERT INTO apis (name) VALUES ('LoadTransposeMatrixf');
-- INSERT INTO apis (name) VALUES ('LoadTransposeMatrixd');
-- INSERT INTO apis (name) VALUES ('LogicOp');
-- INSERT INTO apis (name) VALUES ('Map1');
-- INSERT INTO apis (name) VALUES ('Map2');
-- INSERT INTO apis (name) VALUES ('MapGrid1');
-- INSERT INTO apis (name) VALUES ('MapGrid2');
-- INSERT INTO apis (name) VALUES ('Material');
-- INSERT INTO apis (name) VALUES ('MatrixMode');
-- INSERT INTO apis (name) VALUES ('Minmax');
INSERT INTO apis (name) VALUES ('MultiDrawArrays');
INSERT INTO apis (name) VALUES ('MultiDrawElements');
-- INSERT INTO apis (name) VALUES ('MultiTexCoord');
-- INSERT INTO apis (name) VALUES ('MultMatrix');
-- INSERT INTO apis (name) VALUES ('MultMatrixf');
-- INSERT INTO apis (name) VALUES ('MultMatrixd');
INSERT INTO apis (name) VALUES ('MultTransposeMatrixd');
-- INSERT INTO apis (name) VALUES ('NewList');
-- INSERT INTO apis (name) VALUES ('Normal');
-- INSERT INTO apis (name) VALUES ('Normal3');
-- INSERT INTO apis (name) VALUES ('Normal3d');
-- INSERT INTO apis (name) VALUES ('Normal3dv');
-- INSERT INTO apis (name) VALUES ('Normal3f');
-- INSERT INTO apis (name) VALUES ('Normal3fv');
-- INSERT INTO apis (name) VALUES ('NormalPointer');
-- INSERT INTO apis (name) VALUES ('Ortho');
-- INSERT INTO apis (name) VALUES ('PassThrough');
-- INSERT INTO apis (name) VALUES ('PixelMap');
-- INSERT INTO apis (name) VALUES ('PixelStore');
-- INSERT INTO apis (name) VALUES ('PixelTransfer');
-- INSERT INTO apis (name) VALUES ('PixelZoom');
INSERT INTO apis (name) VALUES ('PointParameterf');
INSERT INTO apis (name) VALUES ('PointParameterfv');
INSERT INTO apis (name) VALUES ('PointParameteri');
INSERT INTO apis (name) VALUES ('PointParameteriv');
-- INSERT INTO apis (name) VALUES ('PointSize');
-- INSERT INTO apis (name) VALUES ('PolygonMode');
-- INSERT INTO apis (name) VALUES ('PolygonOffset');
-- INSERT INTO apis (name) VALUES ('PolygonStipple');
-- INSERT INTO apis (name) VALUES ('PopAttrib');
-- INSERT INTO apis (name) VALUES ('PopClientAttrib');
-- INSERT INTO apis (name) VALUES ('PopMatrix');
-- INSERT INTO apis (name) VALUES ('PopName');
-- INSERT INTO apis (name) VALUES ('PrioritizeTextures');
-- INSERT INTO apis (name) VALUES ('PushAttrib');
-- INSERT INTO apis (name) VALUES ('PushClientAttrib');
-- INSERT INTO apis (name) VALUES ('PushMatrix');
-- INSERT INTO apis (name) VALUES ('PushName');
-- INSERT INTO apis (name) VALUES ('RasterPos');
-- INSERT INTO apis (name) VALUES ('RasterPos2');
-- INSERT INTO apis (name) VALUES ('RasterPos3');
-- INSERT INTO apis (name) VALUES ('RasterPos4');
-- INSERT INTO apis (name) VALUES ('ReadBuffer');
-- INSERT INTO apis (name) VALUES ('ReadPixels');
-- INSERT INTO apis (name) VALUES ('Rect');
-- INSERT INTO apis (name) VALUES ('RenderMode');
-- INSERT INTO apis (name) VALUES ('ResetHistogram');
-- INSERT INTO apis (name) VALUES ('ResetMinmax');
-- INSERT INTO apis (name) VALUES ('Rotate');
INSERT INTO apis (name) VALUES ('SampleCoverage');
-- INSERT INTO apis (name) VALUES ('Scale');
-- INSERT INTO apis (name) VALUES ('Scissor');
INSERT INTO apis (name) VALUES ('SecondaryColor');
INSERT INTO apis (name) VALUES ('SecondaryColor3');
INSERT INTO apis (name) VALUES ('SecondaryColorPointer');
-- INSERT INTO apis (name) VALUES ('SelectBuffer');
-- INSERT INTO apis (name) VALUES ('SeparableFilter2D');
-- INSERT INTO apis (name) VALUES ('ShadeModel');
-- INSERT INTO apis (name) VALUES ('StencilFunc');
-- INSERT INTO apis (name) VALUES ('StencilMask');
-- INSERT INTO apis (name) VALUES ('StencilOp');
-- INSERT INTO apis (name) VALUES ('TexCoord');
-- INSERT INTO apis (name) VALUES ('TexCoord1');
-- INSERT INTO apis (name) VALUES ('TexCoord2');
-- INSERT INTO apis (name) VALUES ('TexCoord3');
-- INSERT INTO apis (name) VALUES ('TexCoord4');
-- INSERT INTO apis (name) VALUES ('TexCoordPointer');
-- INSERT INTO apis (name) VALUES ('TexEnv');
-- INSERT INTO apis (name) VALUES ('TexGen');
-- INSERT INTO apis (name) VALUES ('TexImage');
-- INSERT INTO apis (name) VALUES ('TexImage1D');
-- INSERT INTO apis (name) VALUES ('TexImage2D');
-- INSERT INTO apis (name) VALUES ('TexImage3D');
-- INSERT INTO apis (name) VALUES ('TexParameter');
-- INSERT INTO apis (name) VALUES ('TexParameterf');
-- INSERT INTO apis (name) VALUES ('TexParameterfv');
-- INSERT INTO apis (name) VALUES ('TexParameteri');
-- INSERT INTO apis (name) VALUES ('TexParameteriv');
-- INSERT INTO apis (name) VALUES ('TexSubImage');
-- INSERT INTO apis (name) VALUES ('TexSubImage1D');
-- INSERT INTO apis (name) VALUES ('TexSubImage2D');
-- INSERT INTO apis (name) VALUES ('TexSubImage3D');
-- INSERT INTO apis (name) VALUES ('Translate');
-- INSERT INTO apis (name) VALUES ('Vertex');
-- INSERT INTO apis (name) VALUES ('Vertex2');
-- INSERT INTO apis (name) VALUES ('Vertex2sv');
-- INSERT INTO apis (name) VALUES ('Vertex3');
-- INSERT INTO apis (name) VALUES ('Vertex3f');
-- INSERT INTO apis (name) VALUES ('Vertex4');
-- INSERT INTO apis (name) VALUES ('VertexPointer');
-- INSERT INTO apis (name) VALUES ('Viewport');
INSERT INTO apis (name) VALUES ('WindowPos');
INSERT INTO apis (name) VALUES ('WindowPos2');
INSERT INTO apis (name) VALUES ('WindowPos3');
END;
-- }}}

BEGIN;
-- histories from 1.4 {{{
INSERT INTO histories (api_id, version_id, status)
  SELECT * FROM (
    (SELECT id FROM apis WHERE id NOT IN (SELECT DISTINCT api_id FROM histories))
    CROSS JOIN
    (SELECT * FROM (
      SELECT id, 2 FROM versions WHERE name IS 'GL' AND major == 1 AND minor == 4
      UNION
      SELECT id, 0 FROM versions WHERE name IS 'GL' AND major == 1 AND (minor < 4))));
-- }}}
END;
-- vim: fdm=marker
