.class public Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC_PNG:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.png"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.png"

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final MISSED_CALL:I = 0x0

.field public static final MISSED_SMS:I = 0x1

.field public static final NORMAL_EVENT:I = -0x1

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MISSED_DRAG_DISATANCE:D

.field MISSED_DRAG_THRESHOLD:D

.field MISSED_RELEASE_THRESHOLD:D

.field private MISSED_UNLOCK_RELEASE_MARGIN:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field RIPPLE_DRAG_THRESHOLD:D

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field UNLOCK_DRAG_THRESHOLD:D

.field UNLOCK_RELEASE_THRESHOLD:D

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private diffPressTime:J

.field private distance:D

.field private downX:F

.field private downX2:F

.field private downY:F

.field private downY2:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private h:Ljava/nio/FloatBuffer;

.field private h_buf:I

.field private h_handle:I

.field private heights:[F

.field private i:Ljava/nio/ShortBuffer;

.field private i_buf:I

.field private indices:[S

.field intensityForLandscape:F

.field intensityForLandscapeTicker:F

.field intensityForPortrait:F

.field intensityForPortraitTicker:F

.field intensityForRipple:F

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

.field mFragmentShader:Ljava/lang/String;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mRDownId:I

.field private mRUpId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mVelocityCheckCnt:I

.field mVertexShader:Ljava/lang/String;

.field private mWallpaperPath:Ljava/lang/String;

.field private m_handle:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private shader:I

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field startLocation:I

.field private texture0:I

.field private texture1:I

.field textures0:[I

.field textures1:[I

.field tickerAjustYForLandscape:F

.field tickerAjustYForPortrait:F

.field private tickerCloseLandscapeY:F

.field private tickerClosePortraitY:F

.field private tickerMoveCriteria:I

.field private tickerOpenLandscapeY:F

.field private tickerOpenPortraitY:F

.field private tickerTotalCount:I

.field private tmp_buffer:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field unlockDragThreshold:D

.field unlockReleaseThreshold:D

.field private v:Ljava/nio/FloatBuffer;

.field private v_buf:I

.field private v_handle:I

.field private velocity:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "view"
    .parameter "callback"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/16 v3, 0x10

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->DBG:Z

    const-string v2, "CircleUnlockRippleRenderer"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    const-string v2, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec4 aHeights;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform float uMESH_SIZE_WIDTH;\n uniform float uMESH_SIZE_HEIGHT;\n uniform float uNUM_DETAILS_WIDTH;\n uniform float uNUM_DETAILS_HEIGHT;\n uniform float uRefractiveIndex;\n uniform float uRotate;\n void main() { \n  float maxX = uMESH_SIZE_WIDTH / 2.0; \n  float maxY = uMESH_SIZE_HEIGHT / 2.0; \n  float rimo = uRefractiveIndex - 1.0;\n   vec4 pos = aPosition;\n  vec4 heights = aHeights; \n  float len = heights.x; \n  vec3 v = vec3( pos.x, pos.y, len * 0.25 ); \n  vec2 n = ( vec2( len ) - heights.yz ) * 0.25; \n  float nz = sqrt(dot( n, n ) + 1.0 ); \n  n = n / nz; \n  vec3 d = vec3( v.x, v.y, v.z + 30.0 ); \n   len = sqrt( dot( d, d ) ); \n  d = d / len; \n  float t = dot( d, vec3( n.x, n.y, 1.0 ) ) * rimo; \n  d.x += n.x * t; \n  d.y += n.y * t; \n  float r0, u0, v0; \n  r0 = ( 30.9 - v.z ) / d.z; \n  u0 = ( d.x * r0 + v.x ) / maxX * 0.25 + 0.5; \n  v0 = ( d.y * r0 + v.y ) / maxY * -0.25 + 0.5; \n  float uxx = n.x * 0.5 + 0.5 + pos.y / uMESH_SIZE_WIDTH * 0.25; \n  float vxx = n.y * 0.5 + 0.5 + pos.x / uMESH_SIZE_HEIGHT * 0.25; \n  vTexture0Coord = vec2( uxx, vxx ); \n  vTexture1Coord = vec2( u0, v0 ); \n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    const-string v2, "precision mediump float;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform sampler2D texture0;\nuniform sampler2D texture1;\nuniform highp float reflectionRatio;\nuniform highp float alphaRatio1;\nuniform highp float alphaRatio2;\nvoid main() {\n  highp float iReflectionRatio = 1.0 - reflectionRatio;\n  vec4 texCoord0 = texture2D(texture0, vec2(vTexture0Coord.s, vTexture0Coord.t));\n  vec4 texCoord1 = texture2D(texture1, vec2(vTexture1Coord.s, vTexture1Coord.t));\n  gl_FragColor = texCoord0 * reflectionRatio * (alphaRatio1) + texCoord1 * iReflectionRatio * (alphaRatio2);\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    new-array v2, v4, [S

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const v2, 0x3f6e147b

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    const v2, 0x3e051eb8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    const/high16 v2, -0x3dd0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const/high16 v2, -0x3e48

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v2, 0x4234

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v2, 0x4238

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    iput v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v2, 0x19

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    const-wide/high16 v2, 0x4072

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide/high16 v2, 0x407b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v2, 0x4062c00000000000L

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    const-wide/high16 v2, 0x403e

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    const/16 v2, 0x28

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/16 v2, 0x2f0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    const/16 v2, 0x2d0

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->initWaters()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->checkSound()V

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ne v2, v4, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int v1, v2, v3

    .local v1, max:I
    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v4, v2, v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .local v2, program:I
    if-eqz v2, :cond_0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v6, [I

    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initWaters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method private loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x88e4

    const v4, 0x8893

    const v3, 0x8892

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    invoke-static {v3, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-static {v4, v0, v1, v5}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .local v1, shader:I
    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget v2, v0, v3

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 v1, 0x0

    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadShaderProp()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aHeights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    return-void
.end method

.method private loadTexture()V
    .locals 7

    .prologue
    const v6, 0x47012f00

    const v5, 0x46180400

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xde1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Ink Effect, bitmapOriginal == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    :cond_1
    :goto_0
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture0:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    :cond_2
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures1:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method private makeBuffers()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->vertices:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    return-void
.end method

.method public static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static final makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .local v1, fb:Ljava/nio/ShortBuffer;
    return-object v1
.end method

.method private move()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x1

    .local v3, xSpan:I
    const/4 v2, 0x1

    .local v2, ySpan:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v0, v1, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .local v4, imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .local v5, jmax:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->move([F[FIIIIIILjava/lang/Boolean;)I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    if-lez v0, :cond_3

    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v12}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v2

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_3

    move v11, v3

    .local v11, j:I
    :goto_2
    if-ge v11, v5, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v0, v11

    add-int v10, v0, v9

    .local v10, idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    aput v13, v0, v10

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    aput v13, v0, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v4           #imax:I
    .end local v5           #jmax:I
    .end local v9           #i:I
    .end local v10           #idx:I
    .end local v11           #j:I
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .restart local v4       #imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .restart local v5       #jmax:I
    goto :goto_0

    .restart local v9       #i:I
    .restart local v11       #j:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v9           #i:I
    .end local v11           #j:I
    :cond_2
    iput v12, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    :cond_3
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v9, v0, :cond_5

    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v11, v0, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v11

    add-int/2addr v0, v9

    mul-int/lit8 v10, v0, 0x3

    .restart local v10       #idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v10, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v11, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v9

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v10           #idx:I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .end local v11           #j:I
    :cond_5
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, f:F
    sub-float v1, p4, p5

    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    const/4 v2, 0x1

    aput v8, p1, v2

    const/4 v2, 0x2

    aput v8, p1, v2

    const/4 v2, 0x3

    aput v8, p1, v2

    const/4 v2, 0x4

    aput v8, p1, v2

    const/4 v2, 0x5

    aput v0, p1, v2

    const/4 v2, 0x6

    aput v8, p1, v2

    const/4 v2, 0x7

    aput v8, p1, v2

    const/16 v2, 0x8

    aput v8, p1, v2

    const/16 v2, 0x9

    aput v8, p1, v2

    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    const/16 v2, 0xc

    aput v8, p1, v2

    const/16 v2, 0xd

    aput v8, p1, v2

    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    const/16 v2, 0xf

    aput v8, p1, v2

    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    new-instance v7, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;I)V

    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private ripple(FFF)V
    .locals 8
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/impl/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    return-void
.end method

.method private setBackground(Z)V
    .locals 12
    .parameter "isLoadWaterBitmap"

    .prologue
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path_ripple"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v9, :cond_0

    const-string v9, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x0

    .local v5, inputStream:Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, wallpaperFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .local v7, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    if-nez v7, :cond_1

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108040c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .restart local v7       #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v9, v7}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .end local v7           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_2

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080628

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :cond_2
    :goto_2
    return-void

    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, defaultWallpaperFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, defaultWallpaperFileMultiCSC:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v3, defaultWallpaperFilePng:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #inputStream:Ljava/io/InputStream;
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v5       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108040c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto/16 :goto_0

    .end local v0           #defaultWallpaperFile:Ljava/io/File;
    .end local v1           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    .end local v2           #defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    .end local v3           #defaultWallpaperFilePng:Ljava/io/File;
    :cond_8
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, pBitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_9

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    if-nez v6, :cond_b

    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "pBitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108040c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v5           #inputStream:Ljava/io/InputStream;
    .end local v6           #pBitmap:Landroid/graphics/Bitmap;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v6       #pBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_b
    :try_start_1
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private setEnhancedBackground()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080628

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x68

    const/16 v4, 0x32

    const/high16 v3, 0x42c8

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_4

    :cond_1
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_7

    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const v0, 0x3f666666

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_a

    :cond_9
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3ddacccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e388937

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4240

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41d8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const v0, 0x4499c000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const v0, 0x43bb8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const v0, 0x443b8000

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_d

    :cond_c
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f19999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const v0, 0x3f59999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide/high16 v0, 0x4068

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide/high16 v0, 0x4075

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4060400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    :cond_d
    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iput v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iput v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    iput v6, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    iput v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    iput v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    const-wide/high16 v0, 0x406b

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    const-wide v0, 0x4077a00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    const-wide v0, 0x4061800000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0
.end method

.method private tickAnimation(FF)V
    .locals 4
    .parameter "startY"
    .parameter "intensity"

    .prologue
    const/4 v1, 0x0

    .local v1, tempX:F
    move v2, p1

    .local v2, tempY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerTotalCount:I

    if-ge v0, v3, :cond_0

    int-to-float v1, v0

    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    neg-float v3, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public getReflection()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    return v0
.end method

.method public getRefraction()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    return v0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "event"

    .prologue
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "handleTouchEvent isUnlocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    :cond_4
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float v13, v1, v2

    .local v13, dx:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float v15, v1, v2

    .local v15, dy:F
    float-to-double v1, v13

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, v15

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v11, v1, v3

    .local v11, distance_square:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .local v8, distForUnlock:D
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    sub-float v14, v1, v2

    .local v14, dx2:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    sub-float v16, v1, v2

    .local v16, dy2:F
    float-to-double v1, v14

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move/from16 v0, v16

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v10, v1

    .local v10, distForwWave:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->cleanUp()V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x14

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    goto/16 :goto_3

    .end local v8           #distForUnlock:D
    .end local v10           #distForwWave:I
    .end local v11           #distance_square:D
    .end local v13           #dx:F
    .end local v14           #dx2:F
    .end local v15           #dy:F
    .end local v16           #dy2:F
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->distance:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_UNLOCK_RELEASE_MARGIN:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .restart local v13       #dx:F
    float-to-double v1, v13

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MISSED_DRAG_DISATANCE:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_f

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v1, 0x1

    goto/16 :goto_0

    .end local v13           #dx:F
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->ripple(FFF)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_11

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->playSound(I)V

    :cond_11
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    goto/16 :goto_3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const/16 v7, 0xde1

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_2

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadTexture()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBuffers()V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLockScreenReady()V

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v2, "CircleUnlockRippleRenderer setLockScreenReady"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->m_handle:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v6, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_WIDTH"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uMESH_SIZE_HEIGHT"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_WIDTH"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uNUM_DETAILS_HEIGHT"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v2, "uRefractiveIndex"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v0, 0x8892

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_buf:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x8892

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "reflectionRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v0, 0x8893

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->h_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-ne v0, v6, :cond_3

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadBuffers()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->move()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->clearRipple()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onResume mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->isUnlocked:Z

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    :cond_0
    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    const/4 v14, 0x0

    .local v14, translateX:F
    const/4 v15, 0x0

    .local v15, translateY:F
    const/16 v16, 0x0

    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void

    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_1

    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->createBuffers()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->loadShaderProp()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->makeBuffers()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    goto :goto_0
.end method

.method public setReflection(F)V
    .locals 0
    .parameter "reflec"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    return-void
.end method

.method public setRefraction(F)V
    .locals 1
    .parameter "refrac"

    .prologue
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    return-void
.end method

.method public setRippleBackground()V
    .locals 2

    .prologue
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->drawCount:I

    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundNum:I

    return-void
.end method

.method public setSoundRID(II)V
    .locals 5
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    const/4 v4, 0x1

    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRDownId:I

    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mRUpId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->soundTime:I

    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    iput p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->startLocation:I

    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    iput p2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmx:F

    iput p3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tmy:F

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tikerRippleForClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    return-void

    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public tikerRippleForMove(F)V
    .locals 4
    .parameter "startY"

    .prologue
    const/high16 v3, 0x4000

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    const/4 v0, 0x0

    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    add-float/2addr p1, v1

    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    add-float/2addr p1, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_2
.end method

.method public tikerRippleForOpen()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->moveCount:I

    return-void

    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method
