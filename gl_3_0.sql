-- OpenGL 3.0
-- versions {{{
INSERT INTO versions (name, major, minor) VALUES ('GL', 3, 0);
-- }}}

-- histories before 3.0 {{{
INSERT INTO histories
  SELECT apis.id, versions.id, 1 FROM apis, versions
    WHERE versions.name IS 'GL' AND versions.major == 3 AND versions.minor == 0;

UPDATE histories SET status = 0 WHERE
  histories.version_id IN (
    SELECT id from versions
    WHERE versions.name IS 'GL' AND versions.major == 3 AND versions.minor == 0
  ) AND histories.api_id IN (
    SELECT h.api_id FROM histories AS h JOIN versions AS v ON h.version_id == v.id
    WHERE v.name IS 'GL' AND v.major == 2 AND v.minor == 1 AND
      (h.status == 0 OR h.status == 4)
  );
-- }}}

-- apis {{{
BEGIN;
-- from 1.0 {{{
-- INSERT INTO apis (name) VALUES ('Accum');
-- INSERT INTO apis (name) VALUES ('AlphaFunc');
-- INSERT INTO apis (name) VALUES ('Begin');
-- INSERT INTO apis (name) VALUES ('Bitmap');
-- INSERT INTO apis (name) VALUES ('BlendFunc');
-- INSERT INTO apis (name) VALUES ('CallList');
-- INSERT INTO apis (name) VALUES ('CallLists');
-- INSERT INTO apis (name) VALUES ('Clear');
-- INSERT INTO apis (name) VALUES ('ClearAccum');
-- INSERT INTO apis (name) VALUES ('ClearColor');
-- INSERT INTO apis (name) VALUES ('ClearDepth');
-- INSERT INTO apis (name) VALUES ('ClearIndex');
-- INSERT INTO apis (name) VALUES ('ClearStencil');
-- INSERT INTO apis (name) VALUES ('ClipPlane');
-- INSERT INTO apis (name) VALUES ('Color3b');
-- INSERT INTO apis (name) VALUES ('Color3s');
-- INSERT INTO apis (name) VALUES ('Color3i');
-- INSERT INTO apis (name) VALUES ('Color3f');
-- INSERT INTO apis (name) VALUES ('Color3d');
-- INSERT INTO apis (name) VALUES ('Color3ub');
-- INSERT INTO apis (name) VALUES ('Color3us');
-- INSERT INTO apis (name) VALUES ('Color3ui');
-- INSERT INTO apis (name) VALUES ('Color3bv');
-- INSERT INTO apis (name) VALUES ('Color3sv');
-- INSERT INTO apis (name) VALUES ('Color3iv');
-- INSERT INTO apis (name) VALUES ('Color3fv');
-- INSERT INTO apis (name) VALUES ('Color3dv');
-- INSERT INTO apis (name) VALUES ('Color3ubv');
-- INSERT INTO apis (name) VALUES ('Color3usv');
-- INSERT INTO apis (name) VALUES ('Color4b');
-- INSERT INTO apis (name) VALUES ('Color4s');
-- INSERT INTO apis (name) VALUES ('Color4i');
-- INSERT INTO apis (name) VALUES ('Color4f');
-- INSERT INTO apis (name) VALUES ('Color4d');
-- INSERT INTO apis (name) VALUES ('Color4ub');
-- INSERT INTO apis (name) VALUES ('Color4us');
-- INSERT INTO apis (name) VALUES ('Color4ui');
-- INSERT INTO apis (name) VALUES ('Color4bv');
-- INSERT INTO apis (name) VALUES ('Color4sv');
-- INSERT INTO apis (name) VALUES ('Color4iv');
-- INSERT INTO apis (name) VALUES ('Color4fv');
-- INSERT INTO apis (name) VALUES ('Color4dv');
-- INSERT INTO apis (name) VALUES ('Color4ubv');
-- INSERT INTO apis (name) VALUES ('Color4usv');
-- INSERT INTO apis (name) VALUES ('ColorMask');
-- INSERT INTO apis (name) VALUES ('ColorMaterial');
-- INSERT INTO apis (name) VALUES ('CopyPixels');
-- INSERT INTO apis (name) VALUES ('CullFace');
-- INSERT INTO apis (name) VALUES ('DeleteLists');
-- INSERT INTO apis (name) VALUES ('DepthFunc');
-- INSERT INTO apis (name) VALUES ('DepthMask');
-- INSERT INTO apis (name) VALUES ('DepthRange');
-- INSERT INTO apis (name) VALUES ('Disable');
-- INSERT INTO apis (name) VALUES ('DrawBuffer');
-- INSERT INTO apis (name) VALUES ('DrawPixels');
-- INSERT INTO apis (name) VALUES ('EdgeFlag');
-- INSERT INTO apis (name) VALUES ('EdgeFlagv');
-- INSERT INTO apis (name) VALUES ('Enable');
-- INSERT INTO apis (name) VALUES ('End');
-- INSERT INTO apis (name) VALUES ('EndList');
-- INSERT INTO apis (name) VALUES ('EvalCoord1f');
-- INSERT INTO apis (name) VALUES ('EvalCoord1d');
-- INSERT INTO apis (name) VALUES ('EvalCoord1fv');
-- INSERT INTO apis (name) VALUES ('EvalCoord1dv');
-- INSERT INTO apis (name) VALUES ('EvalCoord2f');
-- INSERT INTO apis (name) VALUES ('EvalCoord2d');
-- INSERT INTO apis (name) VALUES ('EvalCoord2fv');
-- INSERT INTO apis (name) VALUES ('EvalCoord2dv');
-- INSERT INTO apis (name) VALUES ('EvalMesh1');
-- INSERT INTO apis (name) VALUES ('EvalMesh2');
-- INSERT INTO apis (name) VALUES ('EvalPoint1');
-- INSERT INTO apis (name) VALUES ('EvalPoint2');
-- INSERT INTO apis (name) VALUES ('FeedbackBuffer');
-- INSERT INTO apis (name) VALUES ('Finish');
-- INSERT INTO apis (name) VALUES ('Flush');
-- INSERT INTO apis (name) VALUES ('Fogi');
-- INSERT INTO apis (name) VALUES ('Fogf');
-- INSERT INTO apis (name) VALUES ('Fogiv');
-- INSERT INTO apis (name) VALUES ('Fogfv');
-- INSERT INTO apis (name) VALUES ('FrontFace');
-- INSERT INTO apis (name) VALUES ('Frustum');
-- INSERT INTO apis (name) VALUES ('GenLists');
-- INSERT INTO apis (name) VALUES ('GetBooleanv');
-- INSERT INTO apis (name) VALUES ('GetClipPlane');
-- INSERT INTO apis (name) VALUES ('GetDoublev');
-- INSERT INTO apis (name) VALUES ('GetError');
-- INSERT INTO apis (name) VALUES ('GetFloatv');
-- INSERT INTO apis (name) VALUES ('GetIntegerv');
-- INSERT INTO apis (name) VALUES ('GetLightiv');
-- INSERT INTO apis (name) VALUES ('GetLightfv');
-- INSERT INTO apis (name) VALUES ('GetMapiv');
-- INSERT INTO apis (name) VALUES ('GetMapfv');
-- INSERT INTO apis (name) VALUES ('GetMapdv');
-- INSERT INTO apis (name) VALUES ('GetMaterialiv');
-- INSERT INTO apis (name) VALUES ('GetMaterialfv');
-- INSERT INTO apis (name) VALUES ('GetPixelMapuiv');
-- INSERT INTO apis (name) VALUES ('GetPixelMapusv');
-- INSERT INTO apis (name) VALUES ('GetPixelMapfv');
-- INSERT INTO apis (name) VALUES ('GetPolygonStipple');
-- INSERT INTO apis (name) VALUES ('GetString');
-- INSERT INTO apis (name) VALUES ('GetTexEnviv');
-- INSERT INTO apis (name) VALUES ('GetTexEnvfv');
-- INSERT INTO apis (name) VALUES ('GetTexGeniv');
-- INSERT INTO apis (name) VALUES ('GetTexGenfv');
-- INSERT INTO apis (name) VALUES ('GetTexImage');
-- INSERT INTO apis (name) VALUES ('GetTexLevelParameteriv');
-- INSERT INTO apis (name) VALUES ('GetTexLevelParameterfv');
-- INSERT INTO apis (name) VALUES ('GetTexParameteriv');
-- INSERT INTO apis (name) VALUES ('GetTexParameterfv');
-- INSERT INTO apis (name) VALUES ('Hint');
-- INSERT INTO apis (name) VALUES ('Indexs');
-- INSERT INTO apis (name) VALUES ('Indexi');
-- INSERT INTO apis (name) VALUES ('Indexf');
-- INSERT INTO apis (name) VALUES ('Indexd');
-- INSERT INTO apis (name) VALUES ('Indexsv');
-- INSERT INTO apis (name) VALUES ('Indexiv');
-- INSERT INTO apis (name) VALUES ('Indexfv');
-- INSERT INTO apis (name) VALUES ('Indexdv');
-- INSERT INTO apis (name) VALUES ('IndexMask');
-- INSERT INTO apis (name) VALUES ('InitNames');
-- INSERT INTO apis (name) VALUES ('IsEnabled');
-- INSERT INTO apis (name) VALUES ('IsList');
-- INSERT INTO apis (name) VALUES ('Lighti');
-- INSERT INTO apis (name) VALUES ('Lightf');
-- INSERT INTO apis (name) VALUES ('Lightiv');
-- INSERT INTO apis (name) VALUES ('Lightfv');
-- INSERT INTO apis (name) VALUES ('LightModeli');
-- INSERT INTO apis (name) VALUES ('LightModelf');
-- INSERT INTO apis (name) VALUES ('LightModeliv');
-- INSERT INTO apis (name) VALUES ('LightModelfv');
-- INSERT INTO apis (name) VALUES ('LineStipple');
-- INSERT INTO apis (name) VALUES ('LineWidth');
-- INSERT INTO apis (name) VALUES ('ListBase');
-- INSERT INTO apis (name) VALUES ('LoadIdentity');
-- INSERT INTO apis (name) VALUES ('LoadMatrixf');
-- INSERT INTO apis (name) VALUES ('LoadMatrixd');
-- INSERT INTO apis (name) VALUES ('LoadName');
-- INSERT INTO apis (name) VALUES ('LogicOp');
-- INSERT INTO apis (name) VALUES ('Map1f');
-- INSERT INTO apis (name) VALUES ('Map1d');
-- INSERT INTO apis (name) VALUES ('Map2f');
-- INSERT INTO apis (name) VALUES ('Map2d');
-- INSERT INTO apis (name) VALUES ('MapGrid1f');
-- INSERT INTO apis (name) VALUES ('MapGrid1d');
-- INSERT INTO apis (name) VALUES ('MapGrid2f');
-- INSERT INTO apis (name) VALUES ('MapGrid2d');
-- INSERT INTO apis (name) VALUES ('Materiali');
-- INSERT INTO apis (name) VALUES ('Materialf');
-- INSERT INTO apis (name) VALUES ('Materialiv');
-- INSERT INTO apis (name) VALUES ('Materialfv');
-- INSERT INTO apis (name) VALUES ('MatrixMode');
-- INSERT INTO apis (name) VALUES ('MultMatrixf');
-- INSERT INTO apis (name) VALUES ('MultMatrixd');
-- INSERT INTO apis (name) VALUES ('NewList');
-- INSERT INTO apis (name) VALUES ('Normal3b');
-- INSERT INTO apis (name) VALUES ('Normal3s');
-- INSERT INTO apis (name) VALUES ('Normal3i');
-- INSERT INTO apis (name) VALUES ('Normal3f');
-- INSERT INTO apis (name) VALUES ('Normal3d');
-- INSERT INTO apis (name) VALUES ('Normal3bv');
-- INSERT INTO apis (name) VALUES ('Normal3sv');
-- INSERT INTO apis (name) VALUES ('Normal3iv');
-- INSERT INTO apis (name) VALUES ('Normal3fv');
-- INSERT INTO apis (name) VALUES ('Normal3dv');
-- INSERT INTO apis (name) VALUES ('Ortho');
-- INSERT INTO apis (name) VALUES ('PassThrough');
-- INSERT INTO apis (name) VALUES ('PixelMapuiv');
-- INSERT INTO apis (name) VALUES ('PixelMapusv');
-- INSERT INTO apis (name) VALUES ('PixelMapfv');
-- INSERT INTO apis (name) VALUES ('PixelStorei');
-- INSERT INTO apis (name) VALUES ('PixelStoref');
-- INSERT INTO apis (name) VALUES ('PixelTransferi');
-- INSERT INTO apis (name) VALUES ('PixelTransferf');
-- INSERT INTO apis (name) VALUES ('PixelZoom');
-- INSERT INTO apis (name) VALUES ('PointSize');
-- INSERT INTO apis (name) VALUES ('PolygonMode');
-- INSERT INTO apis (name) VALUES ('PolygonStipple');
-- INSERT INTO apis (name) VALUES ('PopAttrib');
-- INSERT INTO apis (name) VALUES ('PopMatrix');
-- INSERT INTO apis (name) VALUES ('PopName');
-- INSERT INTO apis (name) VALUES ('PushAttrib');
-- INSERT INTO apis (name) VALUES ('PushMatrix');
-- INSERT INTO apis (name) VALUES ('PushName');
-- INSERT INTO apis (name) VALUES ('RasterPos2s');
-- INSERT INTO apis (name) VALUES ('RasterPos2i');
-- INSERT INTO apis (name) VALUES ('RasterPos2f');
-- INSERT INTO apis (name) VALUES ('RasterPos2d');
-- INSERT INTO apis (name) VALUES ('RasterPos2sv');
-- INSERT INTO apis (name) VALUES ('RasterPos2iv');
-- INSERT INTO apis (name) VALUES ('RasterPos2fv');
-- INSERT INTO apis (name) VALUES ('RasterPos2dv');
-- INSERT INTO apis (name) VALUES ('RasterPos3s');
-- INSERT INTO apis (name) VALUES ('RasterPos3i');
-- INSERT INTO apis (name) VALUES ('RasterPos3f');
-- INSERT INTO apis (name) VALUES ('RasterPos3d');
-- INSERT INTO apis (name) VALUES ('RasterPos3sv');
-- INSERT INTO apis (name) VALUES ('RasterPos3iv');
-- INSERT INTO apis (name) VALUES ('RasterPos3fv');
-- INSERT INTO apis (name) VALUES ('RasterPos3dv');
-- INSERT INTO apis (name) VALUES ('RasterPos4s');
-- INSERT INTO apis (name) VALUES ('RasterPos4i');
-- INSERT INTO apis (name) VALUES ('RasterPos4f');
-- INSERT INTO apis (name) VALUES ('RasterPos4d');
-- INSERT INTO apis (name) VALUES ('RasterPos4sv');
-- INSERT INTO apis (name) VALUES ('RasterPos4iv');
-- INSERT INTO apis (name) VALUES ('RasterPos4fv');
-- INSERT INTO apis (name) VALUES ('RasterPos4dv');
-- INSERT INTO apis (name) VALUES ('ReadBuffer');
-- INSERT INTO apis (name) VALUES ('ReadPixels');
-- INSERT INTO apis (name) VALUES ('Rects');
-- INSERT INTO apis (name) VALUES ('Recti');
-- INSERT INTO apis (name) VALUES ('Rectf');
-- INSERT INTO apis (name) VALUES ('Rectd');
-- INSERT INTO apis (name) VALUES ('Rectsv');
-- INSERT INTO apis (name) VALUES ('Rectiv');
-- INSERT INTO apis (name) VALUES ('Rectfv');
-- INSERT INTO apis (name) VALUES ('Rectdv');
-- INSERT INTO apis (name) VALUES ('RenderMode');
-- INSERT INTO apis (name) VALUES ('Rotatef');
-- INSERT INTO apis (name) VALUES ('Rotated');
-- INSERT INTO apis (name) VALUES ('Scalef');
-- INSERT INTO apis (name) VALUES ('Scaled');
-- INSERT INTO apis (name) VALUES ('Scissor');
-- INSERT INTO apis (name) VALUES ('SelectBuffer');
-- INSERT INTO apis (name) VALUES ('ShadeModel');
-- INSERT INTO apis (name) VALUES ('StencilFunc');
-- INSERT INTO apis (name) VALUES ('StencilMask');
-- INSERT INTO apis (name) VALUES ('StencilOp');
-- INSERT INTO apis (name) VALUES ('TexCoord1s');
-- INSERT INTO apis (name) VALUES ('TexCoord1i');
-- INSERT INTO apis (name) VALUES ('TexCoord1f');
-- INSERT INTO apis (name) VALUES ('TexCoord1d');
-- INSERT INTO apis (name) VALUES ('TexCoord1sv');
-- INSERT INTO apis (name) VALUES ('TexCoord1iv');
-- INSERT INTO apis (name) VALUES ('TexCoord1fv');
-- INSERT INTO apis (name) VALUES ('TexCoord1dv');
-- INSERT INTO apis (name) VALUES ('TexCoord2s');
-- INSERT INTO apis (name) VALUES ('TexCoord2i');
-- INSERT INTO apis (name) VALUES ('TexCoord2f');
-- INSERT INTO apis (name) VALUES ('TexCoord2d');
-- INSERT INTO apis (name) VALUES ('TexCoord2sv');
-- INSERT INTO apis (name) VALUES ('TexCoord2iv');
-- INSERT INTO apis (name) VALUES ('TexCoord2fv');
-- INSERT INTO apis (name) VALUES ('TexCoord2dv');
-- INSERT INTO apis (name) VALUES ('TexCoord3s');
-- INSERT INTO apis (name) VALUES ('TexCoord3i');
-- INSERT INTO apis (name) VALUES ('TexCoord3f');
-- INSERT INTO apis (name) VALUES ('TexCoord3d');
-- INSERT INTO apis (name) VALUES ('TexCoord3sv');
-- INSERT INTO apis (name) VALUES ('TexCoord3iv');
-- INSERT INTO apis (name) VALUES ('TexCoord3fv');
-- INSERT INTO apis (name) VALUES ('TexCoord3dv');
-- INSERT INTO apis (name) VALUES ('TexCoord4s');
-- INSERT INTO apis (name) VALUES ('TexCoord4i');
-- INSERT INTO apis (name) VALUES ('TexCoord4f');
-- INSERT INTO apis (name) VALUES ('TexCoord4d');
-- INSERT INTO apis (name) VALUES ('TexCoord4sv');
-- INSERT INTO apis (name) VALUES ('TexCoord4iv');
-- INSERT INTO apis (name) VALUES ('TexCoord4fv');
-- INSERT INTO apis (name) VALUES ('TexCoord4dv');
-- INSERT INTO apis (name) VALUES ('TexEnvi');
-- INSERT INTO apis (name) VALUES ('TexEnvf');
-- INSERT INTO apis (name) VALUES ('TexEnviv');
-- INSERT INTO apis (name) VALUES ('TexEnvfv');
-- INSERT INTO apis (name) VALUES ('TexGeni');
-- INSERT INTO apis (name) VALUES ('TexGenf');
-- INSERT INTO apis (name) VALUES ('TexGend');
-- INSERT INTO apis (name) VALUES ('TexGeniv');
-- INSERT INTO apis (name) VALUES ('TexGenfv');
-- INSERT INTO apis (name) VALUES ('TexGendv');
-- INSERT INTO apis (name) VALUES ('TexImage1D');
-- INSERT INTO apis (name) VALUES ('TexImage2D');
-- INSERT INTO apis (name) VALUES ('TexParameteri');
-- INSERT INTO apis (name) VALUES ('TexParameterf');
-- INSERT INTO apis (name) VALUES ('TexParameteriv');
-- INSERT INTO apis (name) VALUES ('TexParameterfv');
-- INSERT INTO apis (name) VALUES ('Translatef');
-- INSERT INTO apis (name) VALUES ('Translated');
-- INSERT INTO apis (name) VALUES ('Vertex2s');
-- INSERT INTO apis (name) VALUES ('Vertex2i');
-- INSERT INTO apis (name) VALUES ('Vertex2f');
-- INSERT INTO apis (name) VALUES ('Vertex2d');
-- INSERT INTO apis (name) VALUES ('Vertex2sv');
-- INSERT INTO apis (name) VALUES ('Vertex2iv');
-- INSERT INTO apis (name) VALUES ('Vertex2fv');
-- INSERT INTO apis (name) VALUES ('Vertex2dv');
-- INSERT INTO apis (name) VALUES ('Vertex3s');
-- INSERT INTO apis (name) VALUES ('Vertex3i');
-- INSERT INTO apis (name) VALUES ('Vertex3f');
-- INSERT INTO apis (name) VALUES ('Vertex3d');
-- INSERT INTO apis (name) VALUES ('Vertex3sv');
-- INSERT INTO apis (name) VALUES ('Vertex3iv');
-- INSERT INTO apis (name) VALUES ('Vertex3fv');
-- INSERT INTO apis (name) VALUES ('Vertex3dv');
-- INSERT INTO apis (name) VALUES ('Vertex4s');
-- INSERT INTO apis (name) VALUES ('Vertex4i');
-- INSERT INTO apis (name) VALUES ('Vertex4f');
-- INSERT INTO apis (name) VALUES ('Vertex4d');
-- INSERT INTO apis (name) VALUES ('Vertex4sv');
-- INSERT INTO apis (name) VALUES ('Vertex4iv');
-- INSERT INTO apis (name) VALUES ('Vertex4fv');
-- INSERT INTO apis (name) VALUES ('Vertex4dv');
-- INSERT INTO apis (name) VALUES ('Viewport');
-- }}}
-- from 1.1 {{{
-- INSERT INTO apis (name) VALUES ('AreTexturesResident');
-- INSERT INTO apis (name) VALUES ('ArrayElement');
-- INSERT INTO apis (name) VALUES ('BindTexture');
-- INSERT INTO apis (name) VALUES ('ColorPointer');
-- INSERT INTO apis (name) VALUES ('CopyTexImage1D');
-- INSERT INTO apis (name) VALUES ('CopyTexImage2D');
-- INSERT INTO apis (name) VALUES ('CopyTexSubImage1D');
-- INSERT INTO apis (name) VALUES ('CopyTexSubImage2D');
-- INSERT INTO apis (name) VALUES ('DeleteTextures');
-- INSERT INTO apis (name) VALUES ('DisableClientState');
-- INSERT INTO apis (name) VALUES ('DrawArrays');
-- INSERT INTO apis (name) VALUES ('DrawElements');
-- INSERT INTO apis (name) VALUES ('EdgeFlagPointer');
-- INSERT INTO apis (name) VALUES ('EnableClientState');
-- INSERT INTO apis (name) VALUES ('GenTextures');
-- INSERT INTO apis (name) VALUES ('GetPointerv');
-- INSERT INTO apis (name) VALUES ('IndexPointer');
-- INSERT INTO apis (name) VALUES ('InterleavedArrays');
-- INSERT INTO apis (name) VALUES ('IsTexture');
-- INSERT INTO apis (name) VALUES ('NormalPointer');
-- INSERT INTO apis (name) VALUES ('PolygonOffset');
-- INSERT INTO apis (name) VALUES ('PopClientAttrib');
-- INSERT INTO apis (name) VALUES ('PrioritizeTextures');
-- INSERT INTO apis (name) VALUES ('PushClientAttrib');
-- INSERT INTO apis (name) VALUES ('TexCoordPointer');
-- INSERT INTO apis (name) VALUES ('TexSubImage1D');
-- INSERT INTO apis (name) VALUES ('TexSubImage2D');
-- INSERT INTO apis (name) VALUES ('VertexPointer');
-- }}}
-- from 1.2 {{{
-- INSERT INTO apis (name) VALUES ('DrawRangeElements');
-- INSERT INTO apis (name) VALUES ('ColorTable');
-- INSERT INTO apis (name) VALUES ('ColorTableParameteriv');
-- INSERT INTO apis (name) VALUES ('ColorTableParameterfv');
-- INSERT INTO apis (name) VALUES ('CopyColorTable');
-- INSERT INTO apis (name) VALUES ('ColorSubTable');
-- INSERT INTO apis (name) VALUES ('CopyColorSubTable');
-- INSERT INTO apis (name) VALUES ('ConvolutionFilter1D');
-- INSERT INTO apis (name) VALUES ('ConvolutionFilter2D');
-- INSERT INTO apis (name) VALUES ('ConvolutionParameteri');
-- INSERT INTO apis (name) VALUES ('ConvolutionParameterf');
-- INSERT INTO apis (name) VALUES ('ConvolutionParameteriv');
-- INSERT INTO apis (name) VALUES ('ConvolutionParameterfv');
-- INSERT INTO apis (name) VALUES ('SeparableFilter2D');
-- INSERT INTO apis (name) VALUES ('CopyConvolutionFilter1D');
-- INSERT INTO apis (name) VALUES ('CopyConvolutionFilter2D');
-- INSERT INTO apis (name) VALUES ('Histogram');
-- INSERT INTO apis (name) VALUES ('Minmax');
-- INSERT INTO apis (name) VALUES ('TexImage3D');
-- INSERT INTO apis (name) VALUES ('CopyTexSubImage3D');
-- INSERT INTO apis (name) VALUES ('TexSubImage3D');
-- INSERT INTO apis (name) VALUES ('BlendColor');
-- INSERT INTO apis (name) VALUES ('BlendEquation');
-- INSERT INTO apis (name) VALUES ('GetColorTable');
-- INSERT INTO apis (name) VALUES ('GetColorTableParameteriv');
-- INSERT INTO apis (name) VALUES ('GetColorTableParameterfv');
-- INSERT INTO apis (name) VALUES ('GetConvolutionFilter');
-- INSERT INTO apis (name) VALUES ('GetSeparableFilter');
-- INSERT INTO apis (name) VALUES ('GetConvolutionParameteriv');
-- INSERT INTO apis (name) VALUES ('GetConvolutionParameterfv');
-- INSERT INTO apis (name) VALUES ('GetHistogram');
-- INSERT INTO apis (name) VALUES ('ResetHistogram');
-- INSERT INTO apis (name) VALUES ('GetHistogramParameteriv');
-- INSERT INTO apis (name) VALUES ('GetHistogramParameterfv');
-- INSERT INTO apis (name) VALUES ('GetMinmax');
-- INSERT INTO apis (name) VALUES ('ResetMinmax');
-- INSERT INTO apis (name) VALUES ('GetMinmaxParameteriv');
-- INSERT INTO apis (name) VALUES ('GetMinmaxParameterfv');
-- }}}
-- from 1.3 {{{
-- INSERT INTO apis (name) VALUES ('MultitexCoord1s');
-- INSERT INTO apis (name) VALUES ('MultitexCoord1i');
-- INSERT INTO apis (name) VALUES ('MultitexCoord1f');
-- INSERT INTO apis (name) VALUES ('MultitexCoord1d');
-- INSERT INTO apis (name) VALUES ('MultitexCoord1sv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord1iv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord1fv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord1dv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2s');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2i');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2f');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2d');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2sv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2iv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2fv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord2dv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3s');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3i');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3f');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3d');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3sv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3iv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3fv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord3dv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4s');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4i');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4f');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4d');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4sv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4iv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4fv');
-- INSERT INTO apis (name) VALUES ('MultitexCoord4dv');
-- INSERT INTO apis (name) VALUES ('ClientActiveTexture');
-- INSERT INTO apis (name) VALUES ('LoadTransposeMatrixf');
-- INSERT INTO apis (name) VALUES ('LoadTransposeMatrixd');
-- INSERT INTO apis (name) VALUES ('MultTransposeMatrixf');
-- INSERT INTO apis (name) VALUES ('MultTransposeMatrixd');
-- INSERT INTO apis (name) VALUES ('ActiveTexture');
-- INSERT INTO apis (name) VALUES ('CompressedTexImage1D');
-- INSERT INTO apis (name) VALUES ('CompressedTexImage2D');
-- INSERT INTO apis (name) VALUES ('CompressedTexImage3D');
-- INSERT INTO apis (name) VALUES ('CompressedTexSubImage1D');
-- INSERT INTO apis (name) VALUES ('CompressedTexSubImage2D');
-- INSERT INTO apis (name) VALUES ('CompressedTexSubImage3D');
-- INSERT INTO apis (name) VALUES ('SampleCoverage');
-- INSERT INTO apis (name) VALUES ('GetCompressedTexImage');
-- }}}
-- from 1.4 {{{
-- INSERT INTO apis (name) VALUES ('FogCoordf');
-- INSERT INTO apis (name) VALUES ('FogCoordd');
-- INSERT INTO apis (name) VALUES ('FogCoordfv');
-- INSERT INTO apis (name) VALUES ('FogCoorddv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3b');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3s');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3i');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3f');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3d');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3ub');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3us');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3ui');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3bv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3sv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3iv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3fv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3dv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3ubv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3usv');
-- INSERT INTO apis (name) VALUES ('SecondaryColor3uiv');
-- INSERT INTO apis (name) VALUES ('SecondaryColorPointer');
-- INSERT INTO apis (name) VALUES ('FogCoordPointer');
-- INSERT INTO apis (name) VALUES ('WindowPos2i');
-- INSERT INTO apis (name) VALUES ('WindowPos2f');
-- INSERT INTO apis (name) VALUES ('WindowPos2d');
-- INSERT INTO apis (name) VALUES ('WindowPos2s');
-- INSERT INTO apis (name) VALUES ('WindowPos2iv');
-- INSERT INTO apis (name) VALUES ('WindowPos2fv');
-- INSERT INTO apis (name) VALUES ('WindowPos2dv');
-- INSERT INTO apis (name) VALUES ('WindowPos2sv');
-- INSERT INTO apis (name) VALUES ('WindowPos3i');
-- INSERT INTO apis (name) VALUES ('WindowPos3f');
-- INSERT INTO apis (name) VALUES ('WindowPos3d');
-- INSERT INTO apis (name) VALUES ('WindowPos3s');
-- INSERT INTO apis (name) VALUES ('WindowPos3iv');
-- INSERT INTO apis (name) VALUES ('WindowPos3fv');
-- INSERT INTO apis (name) VALUES ('WindowPos3dv');
-- INSERT INTO apis (name) VALUES ('WindowPos3sv');
-- }}}
-- from 1.5 {{{
-- INSERT INTO apis (name) VALUES ('MultiDrawArrays');
-- INSERT INTO apis (name) VALUES ('MultiDrawElements');
-- INSERT INTO apis (name) VALUES ('BindBuffer');
-- INSERT INTO apis (name) VALUES ('DeleteBuffers');
-- INSERT INTO apis (name) VALUES ('GenBuffers');
-- INSERT INTO apis (name) VALUES ('BufferData');
-- INSERT INTO apis (name) VALUES ('BufferSubData');
-- INSERT INTO apis (name) VALUES ('MapBuffer');
-- INSERT INTO apis (name) VALUES ('UnmapBuffer');
-- INSERT INTO apis (name) VALUES ('BeginQuery');
-- INSERT INTO apis (name) VALUES ('EndQuery');
-- INSERT INTO apis (name) VALUES ('GenQueries');
-- INSERT INTO apis (name) VALUES ('DeleteQueries');
-- INSERT INTO apis (name) VALUES ('BlendFuncSeparate');
-- INSERT INTO apis (name) VALUES ('GetBufferParameteriv');
-- INSERT INTO apis (name) VALUES ('IsQuery');
-- INSERT INTO apis (name) VALUES ('GetQueryObjectiv');
-- INSERT INTO apis (name) VALUES ('GetQueryObjectuiv');
-- INSERT INTO apis (name) VALUES ('IsBuffer');
-- INSERT INTO apis (name) VALUES ('GetBufferSubData');
-- INSERT INTO apis (name) VALUES ('GetBufferPointerv');
-- }}}
-- from 2.0 {{{
-- INSERT INTO apis (name) VALUES ('VertexAttrib1s');
-- INSERT INTO apis (name) VALUES ('VertexAttrib1f');
-- INSERT INTO apis (name) VALUES ('VertexAttrib1d');
-- INSERT INTO apis (name) VALUES ('VertexAttrib1sv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib1fv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib1dv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib2s');
-- INSERT INTO apis (name) VALUES ('VertexAttrib2f');
-- INSERT INTO apis (name) VALUES ('VertexAttrib2d');
-- INSERT INTO apis (name) VALUES ('VertexAttrib2sv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib2fv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib2dv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib3s');
-- INSERT INTO apis (name) VALUES ('VertexAttrib3f');
-- INSERT INTO apis (name) VALUES ('VertexAttrib3d');
-- INSERT INTO apis (name) VALUES ('VertexAttrib3sv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib3fv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib3dv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4s');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4f');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4d');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4bv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4sv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4iv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4fv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4dv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4ubv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4usv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4uiv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4Nub');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4Nbv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4Nsv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4Niv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4Nubv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4Nusv');
-- INSERT INTO apis (name) VALUES ('VertexAttrib4Nuiv');
-- INSERT INTO apis (name) VALUES ('VertexAttribPointer');
-- INSERT INTO apis (name) VALUES ('EnableVertexAttribArray');
-- INSERT INTO apis (name) VALUES ('DisableVertexAttribArray');
-- INSERT INTO apis (name) VALUES ('CreateShader');
-- INSERT INTO apis (name) VALUES ('ShaderSource');
-- INSERT INTO apis (name) VALUES ('CompileShader');
-- INSERT INTO apis (name) VALUES ('DeleteShader');
-- INSERT INTO apis (name) VALUES ('CreateProgram');
-- INSERT INTO apis (name) VALUES ('AttachShader');
-- INSERT INTO apis (name) VALUES ('DetachShader');
-- INSERT INTO apis (name) VALUES ('LinkProgram');
-- INSERT INTO apis (name) VALUES ('UseProgram');
-- INSERT INTO apis (name) VALUES ('DeleteProgram');
-- INSERT INTO apis (name) VALUES ('GetActiveAttrib');
-- INSERT INTO apis (name) VALUES ('GetAttribLocation');
-- INSERT INTO apis (name) VALUES ('BindAttribLocation');
-- INSERT INTO apis (name) VALUES ('GetUniformLocation');
-- INSERT INTO apis (name) VALUES ('GetActiveUniform');
-- INSERT INTO apis (name) VALUES ('Uniform1i');
-- INSERT INTO apis (name) VALUES ('Uniform1f');
-- INSERT INTO apis (name) VALUES ('Uniform1iv');
-- INSERT INTO apis (name) VALUES ('Uniform1fv');
-- INSERT INTO apis (name) VALUES ('Uniform2i');
-- INSERT INTO apis (name) VALUES ('Uniform2f');
-- INSERT INTO apis (name) VALUES ('Uniform2iv');
-- INSERT INTO apis (name) VALUES ('Uniform2fv');
-- INSERT INTO apis (name) VALUES ('Uniform3i');
-- INSERT INTO apis (name) VALUES ('Uniform3f');
-- INSERT INTO apis (name) VALUES ('Uniform3iv');
-- INSERT INTO apis (name) VALUES ('Uniform3fv');
-- INSERT INTO apis (name) VALUES ('Uniform4i');
-- INSERT INTO apis (name) VALUES ('Uniform4f');
-- INSERT INTO apis (name) VALUES ('Uniform4iv');
-- INSERT INTO apis (name) VALUES ('Uniform4fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix2fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix3fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix4fv');
-- INSERT INTO apis (name) VALUES ('ValidateProgram');
-- INSERT INTO apis (name) VALUES ('StencilFuncSeparate');
-- INSERT INTO apis (name) VALUES ('StencilOpSeparate');
-- INSERT INTO apis (name) VALUES ('BlendEquationSeparate');
-- INSERT INTO apis (name) VALUES ('DrawBuffers');
-- INSERT INTO apis (name) VALUES ('StencilMaskSeparate');
-- INSERT INTO apis (name) VALUES ('IsShader');
-- INSERT INTO apis (name) VALUES ('GetShaderiv');
-- INSERT INTO apis (name) VALUES ('IsProgram');
-- INSERT INTO apis (name) VALUES ('GetProgramiv');
-- INSERT INTO apis (name) VALUES ('GetAttachedShader');
-- INSERT INTO apis (name) VALUES ('GetShaderInfoLog');
-- INSERT INTO apis (name) VALUES ('GetProgramInfoLog');
-- INSERT INTO apis (name) VALUES ('GetShaderSource');
-- INSERT INTO apis (name) VALUES ('GetVertexAttribdv');
-- INSERT INTO apis (name) VALUES ('GetVertexAttribfv');
-- INSERT INTO apis (name) VALUES ('GetVertexAttribiv');
-- INSERT INTO apis (name) VALUES ('GetVertexAttribPointerv');
-- INSERT INTO apis (name) VALUES ('GetUniformfv');
-- INSERT INTO apis (name) VALUES ('GetUniformiv');
-- }}}
-- from 2.1 {{{
-- INSERT INTO apis (name) VALUES ('UniformMatrix2x3fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix3x2fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix2x4fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix4x2fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix3x4fv');
-- INSERT INTO apis (name) VALUES ('UniformMatrix4x3fv');
-- }}}
--from 3.0 {{{
INSERT INTO apis (name) VALUES ('VertexAttribI1i');
INSERT INTO apis (name) VALUES ('VertexAttribI1ui');
INSERT INTO apis (name) VALUES ('VertexAttribI1iv');
INSERT INTO apis (name) VALUES ('VertexAttribI1uiv');
INSERT INTO apis (name) VALUES ('VertexAttribI2i');
INSERT INTO apis (name) VALUES ('VertexAttribI2ui');
INSERT INTO apis (name) VALUES ('VertexAttribI2iv');
INSERT INTO apis (name) VALUES ('VertexAttribI2uiv');
INSERT INTO apis (name) VALUES ('VertexAttribI3i');
INSERT INTO apis (name) VALUES ('VertexAttribI3ui');
INSERT INTO apis (name) VALUES ('VertexAttribI3iv');
INSERT INTO apis (name) VALUES ('VertexAttribI3uiv');
INSERT INTO apis (name) VALUES ('VertexAttribI4i');
INSERT INTO apis (name) VALUES ('VertexAttribI4ui');
INSERT INTO apis (name) VALUES ('VertexAttribI4iv');
INSERT INTO apis (name) VALUES ('VertexAttribI4uiv');
INSERT INTO apis (name) VALUES ('VertexAttribI4bv');
INSERT INTO apis (name) VALUES ('VertexAttribI4sv');
INSERT INTO apis (name) VALUES ('VertexAttribI4ubv');
INSERT INTO apis (name) VALUES ('VertexAttribI4usv');
INSERT INTO apis (name) VALUES ('VertexAttribIPoiter');
INSERT INTO apis (name) VALUES ('MapBufferRange');
INSERT INTO apis (name) VALUES ('FlushMappedBufferRange');
INSERT INTO apis (name) VALUES ('GenVertexArrays');
INSERT INTO apis (name) VALUES ('DeleteVertexArrays');
INSERT INTO apis (name) VALUES ('BindVertexArrays');
INSERT INTO apis (name) VALUES ('BeginConditionalRender');
INSERT INTO apis (name) VALUES ('EndConditionalRender');
INSERT INTO apis (name) VALUES ('BeginTransformFeedback');
INSERT INTO apis (name) VALUES ('EndTransformFeedback');
INSERT INTO apis (name) VALUES ('BindBufferRange');
INSERT INTO apis (name) VALUES ('BindBufferBase');
INSERT INTO apis (name) VALUES ('ClampColor');
INSERT INTO apis (name) VALUES ('Uniform1ui');
INSERT INTO apis (name) VALUES ('Uniform1uiv');
INSERT INTO apis (name) VALUES ('Uniform2ui');
INSERT INTO apis (name) VALUES ('Uniform2uiv');
INSERT INTO apis (name) VALUES ('Uniform3ui');
INSERT INTO apis (name) VALUES ('Uniform3uiv');
INSERT INTO apis (name) VALUES ('Uniform4ui');
INSERT INTO apis (name) VALUES ('Uniform4uiv');
INSERT INTO apis (name) VALUES ('TransformFeedbackVarings');
INSERT INTO apis (name) VALUES ('GetTransformFeedbackVarings');
INSERT INTO apis (name) VALUES ('TexParameterIiv');
INSERT INTO apis (name) VALUES ('TexParameterIuiv');
INSERT INTO apis (name) VALUES ('GenerateMipmap');
INSERT INTO apis (name) VALUES ('BindFragDataLocation');
INSERT INTO apis (name) VALUES ('GetFragDataLocation');
INSERT INTO apis (name) VALUES ('ClearBufferiv');
INSERT INTO apis (name) VALUES ('ClearBufferfv');
INSERT INTO apis (name) VALUES ('ClearBufferuiv');
INSERT INTO apis (name) VALUES ('ClearBufferfi');
INSERT INTO apis (name) VALUES ('BlitFramebuffer');
INSERT INTO apis (name) VALUES ('BindFramebuffer');
INSERT INTO apis (name) VALUES ('DeleteFramebuffers');
INSERT INTO apis (name) VALUES ('GenFramebuffers');
INSERT INTO apis (name) VALUES ('BindRenderbuffer');
INSERT INTO apis (name) VALUES ('DeleteRenderbuffers');
INSERT INTO apis (name) VALUES ('GenRenderbuffers');
INSERT INTO apis (name) VALUES ('RenderbufferStorageMutltisample');
INSERT INTO apis (name) VALUES ('RenderbufferStorage');
INSERT INTO apis (name) VALUES ('FramebufferRenderbuffer');
INSERT INTO apis (name) VALUES ('FramebufferTexture1D');
INSERT INTO apis (name) VALUES ('FramebufferTexture2D');
INSERT INTO apis (name) VALUES ('FramebufferTexture3D');
INSERT INTO apis (name) VALUES ('FramebufferTextureLayer');
INSERT INTO apis (name) VALUES ('CheckFramebufferStatus');
INSERT INTO apis (name) VALUES ('IsEnabledi');
INSERT INTO apis (name) VALUES ('GetTexParameterIiv');
INSERT INTO apis (name) VALUES ('GetTexParameterIuiv');
INSERT INTO apis (name) VALUES ('GetStringi');
INSERT INTO apis (name) VALUES ('IsVertexArray');
INSERT INTO apis (name) VALUES ('GetVertexAttribIiv');
INSERT INTO apis (name) VALUES ('GetVertexAttribIuiv');
INSERT INTO apis (name) VALUES ('GetUniformuiv');
INSERT INTO apis (name) VALUES ('IsFramebuffer');
INSERT INTO apis (name) VALUES ('GetFramebufferAttachmentParameteriv');
INSERT INTO apis (name) VALUES ('IsRenderbuffer');
INSERT INTO apis (name) VALUES ('GetRenderbufferParameteriv');
INSERT INTO apis (name) VALUES ('Enablei');
INSERT INTO apis (name) VALUES ('Disablei');
INSERT INTO apis (name) VALUES ('ColorMaski');
INSERT INTO apis (name) VALUES ('GetBooleani_v');
INSERT INTO apis (name) VALUES ('GetIntegeri_v');
-- }}}
END;
-- }}}

BEGIN;
-- histories from 3.0 {{{
INSERT INTO histories (api_id, version_id, status)
  SELECT * FROM (
    (SELECT id FROM apis WHERE id NOT IN (SELECT DISTINCT api_id FROM histories))
    CROSS JOIN
    (SELECT * FROM (
      SELECT id, 2 FROM versions WHERE name IS 'GL' AND major == 3 AND minor == 0
      UNION
      SELECT id, 0 FROM versions WHERE name IS 'GL' AND major < 3)));
-- }}}
END;
-- vim: fdm=marker
