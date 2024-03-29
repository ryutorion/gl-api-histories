-- OpenGL 1.1
-- versions {{{
INSERT INTO versions (name, major, minor) VALUES ('GL', 1, 1);
-- }}}

-- histories before 1.1 {{{
INSERT INTO histories (api_id, version_id, status)
  SELECT apis.id, versions.id, 1 FROM apis, versions
    WHERE versions.name IS 'GL' AND versions.major == 1 AND versions.minor == 1;
UPDATE histories SET status = 4 WHERE
  histories.api_id IN (SELECT id from apis WHERE (
    name IS 'Colorb' OR
    name IS 'Colorf' OR
    name IS 'Colori' OR
    name IS 'Colors'
  )) AND histories.version_id IN (SELECT id from versions WHERE (
    versions.name IS 'GL' AND versions.major == 1 AND versions.minor == 1
  ));
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
INSERT INTO apis (name) VALUES ('AreTexturesResident');
INSERT INTO apis (name) VALUES ('ArrayElement');
INSERT INTO apis (name) VALUES ('BindTexture');
INSERT INTO apis (name) VALUES ('ColorPointer');
INSERT INTO apis (name) VALUES ('CopyTexImage1D');
INSERT INTO apis (name) VALUES ('CopyTexImage2D');
INSERT INTO apis (name) VALUES ('CopyTexSubImage1D');
INSERT INTO apis (name) VALUES ('CopyTexSubImage2D');
INSERT INTO apis (name) VALUES ('DeleteTextures');
INSERT INTO apis (name) VALUES ('DisableClientState');
INSERT INTO apis (name) VALUES ('DrawArrays');
INSERT INTO apis (name) VALUES ('DrawElements');
INSERT INTO apis (name) VALUES ('EdgeFlagPointer');
INSERT INTO apis (name) VALUES ('EnableClientState');
INSERT INTO apis (name) VALUES ('GenTextures');
INSERT INTO apis (name) VALUES ('GetPointerv');
INSERT INTO apis (name) VALUES ('IndexPointer');
INSERT INTO apis (name) VALUES ('InterleavedArrays');
INSERT INTO apis (name) VALUES ('IsTexture');
INSERT INTO apis (name) VALUES ('NormalPointer');
INSERT INTO apis (name) VALUES ('PolygonOffset');
INSERT INTO apis (name) VALUES ('PopClientAttrib');
INSERT INTO apis (name) VALUES ('PrioritizeTextures');
INSERT INTO apis (name) VALUES ('PushClientAttrib');
INSERT INTO apis (name) VALUES ('TexCoordPointer');
INSERT INTO apis (name) VALUES ('TexSubImage1D');
INSERT INTO apis (name) VALUES ('TexSubImage2D');
INSERT INTO apis (name) VALUES ('VertexPointer');
-- }}}
END;
-- }}}

BEGIN;
-- histories from 1.1 {{{
INSERT INTO histories (api_id, version_id, status)
  SELECT * FROM (
    (SELECT id FROM apis WHERE id NOT IN (SELECT DISTINCT api_id FROM histories))
    CROSS JOIN
    (SELECT * FROM (
      SELECT id, 2 FROM versions WHERE name IS 'GL' AND major == 1 AND minor == 1
      UNION
      SELECT id, 0 FROM versions WHERE name IS 'GL' AND major == 1 AND minor == 0)));
-- }}}
END;
-- vim: fdm=marker
