.class public Lcom/android/systemui/statusbar/phone/SignalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SignalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SignalDrawable$1;,
        Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;
    }
.end annotation


# static fields
.field private static final FIT:[F

.field private static final INV_TAN:F

.field private static X_PATH:[[F


# instance fields
.field private mAnimating:Z

.field private mAutoMirrored:Z

.field private final mChangeDot:Ljava/lang/Runnable;

.field private mCurrentDot:I

.field private final mCutPath:Landroid/graphics/Path;

.field private final mDarkModeBackgroundColor:I

.field private final mDarkModeFillColor:I

.field private final mForegroundPaint:Landroid/graphics/Paint;

.field private final mForegroundPath:Landroid/graphics/Path;

.field private final mFullPath:Landroid/graphics/Path;

.field private final mHandler:Landroid/os/Handler;

.field private mIntrinsicSize:I

.field private mLevel:I

.field private final mLightModeBackgroundColor:I

.field private final mLightModeFillColor:I

.field private mNumLevels:F

.field private mOldDarkIntensity:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

.field private mState:I

.field private mVisible:Z

.field private final mXPath:Landroid/graphics/Path;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SignalDrawable;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SignalDrawable;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SignalDrawable;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/SignalDrawable;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 56
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    .line 73
    const/16 v0, 0xc

    new-array v0, v0, [[F

    .line 74
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 76
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    .line 77
    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    .line 78
    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 79
    new-array v1, v3, [F

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 80
    new-array v1, v3, [F

    fill-array-data v1, :array_7

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 81
    new-array v1, v3, [F

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 82
    new-array v1, v3, [F

    fill-array-data v1, :array_9

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 83
    new-array v1, v3, [F

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 84
    new-array v1, v3, [F

    fill-array-data v1, :array_b

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 85
    new-array v1, v3, [F

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 73
    sput-object v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    .line 88
    const-wide v0, 0x3fd921fb54442d18L    # 0.39269908169872414

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sput v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    .line 41
    return-void

    .line 56
    :array_0
    .array-data 4
        0x4010a3d7    # 2.26f
        -0x3fbeb852    # -3.02f
        0x3fe147ae    # 1.76f
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x3f699999    # 0.91249996f
        0x3f355555
    .end array-data

    .line 75
    :array_2
    .array-data 4
        -0x42c44444
        -0x42c44444
    .end array-data

    .line 76
    :array_3
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    .line 77
    :array_4
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data

    .line 78
    :array_5
    .array-data 4
        -0x42c44444
        0x3d3bbbbc
    .end array-data

    .line 79
    :array_6
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    .line 80
    :array_7
    .array-data 4
        -0x425dddde
        0x3da22222
    .end array-data

    .line 81
    :array_8
    .array-data 4
        0x3d3bbbbc
        0x3d3bbbbc
    .end array-data

    .line 82
    :array_9
    .array-data 4
        0x3da22222
        -0x425dddde
    .end array-data

    .line 83
    :array_a
    .array-data 4
        0x3da22222
        0x3da22222
    .end array-data

    .line 84
    :array_b
    .array-data 4
        0x3d3bbbbc
        -0x42c44444
    .end array-data

    .line 85
    :array_c
    .array-data 4
        -0x425dddde
        -0x425dddde
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    .line 98
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    .line 99
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    .line 105
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    .line 362
    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable$1;-><init>(Lcom/android/systemui/statusbar/phone/SignalDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    .line 117
    const v0, 0x7f06002a

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 116
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    .line 119
    const v0, 0x7f06002b

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 118
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    .line 121
    const v0, 0x7f060079

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 120
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    .line 123
    const v0, 0x7f06007a

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 122
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    .line 128
    return-void
.end method

.method private calcFit(F)F
    .locals 4
    .param p1, "v"    # F

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "ret":F
    move v2, p1

    .line 316
    .local v2, "t":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 317
    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->FIT:[F

    aget v3, v3, v0

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 318
    mul-float/2addr v2, p1

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return v1
.end method

.method private drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V
    .locals 6
    .param p1, "fullPath"    # Landroid/graphics/Path;
    .param p2, "foregroundPath"    # Landroid/graphics/Path;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "dotSize"    # F
    .param p6, "i"    # I

    .prologue
    .line 303
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCurrentDot:I

    if-ne p6, v1, :cond_0

    move-object v0, p2

    .line 304
    .local v0, "p":Landroid/graphics/Path;
    :goto_0
    add-float v3, p3, p5

    add-float v4, p4, p5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 305
    return-void

    .line 303
    .end local v0    # "p":Landroid/graphics/Path;
    :cond_0
    move-object v0, p1

    .restart local v0    # "p":Landroid/graphics/Path;
    goto :goto_0
.end method

.method public static getAirplaneModeState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .prologue
    .line 400
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    return v0
.end method

.method private getBackgroundColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 197
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeBackgroundColor:I

    .line 196
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getCarrierChangeState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .prologue
    .line 392
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3
    .param p1, "darkIntensity"    # F
    .param p2, "lightColor"    # I
    .param p3, "darkColor"    # I

    .prologue
    .line 201
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getEmptyState(I)I
    .locals 2
    .param p0, "numLevels"    # I

    .prologue
    .line 396
    shl-int/lit8 v0, p0, 0x8

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    return v0
.end method

.method private getFillColor(F)I
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 192
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mDarkModeFillColor:I

    .line 191
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method public static getLevel(I)I
    .locals 1
    .param p0, "fullState"    # I

    .prologue
    .line 374
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getNumLevels(I)I
    .locals 1
    .param p0, "fullState"    # I

    .prologue
    .line 382
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getState(I)I
    .locals 1
    .param p0, "fullState"    # I

    .prologue
    .line 378
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static getState(IIZ)I
    .locals 2
    .param p0, "level"    # I
    .param p1, "numLevels"    # I
    .param p2, "cutOut"    # Z

    .prologue
    .line 386
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    shl-int/lit8 v0, v0, 0x10

    .line 387
    shl-int/lit8 v1, p1, 0x8

    .line 386
    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSignalState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 152
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 155
    return-void
.end method

.method private updateAnimation()V
    .locals 3

    .prologue
    .line 158
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    .line 159
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    .local v0, "shouldAnimate":Z
    goto :goto_0

    .line 160
    .end local v0    # "shouldAnimate":Z
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAnimating:Z

    .line 161
    if-eqz v0, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 166
    :goto_1
    return-void

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mChangeDot:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAutoMirrored:Z

    move/from16 v22, v0

    .line 213
    :goto_0
    if-eqz v22, :cond_0

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 219
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    move/from16 v25, v0

    .line 222
    .local v25, "width":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v1

    move/from16 v20, v0

    .line 223
    .local v20, "height":F
    const v1, 0x3daaaaab

    mul-float v1, v1, v25

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    .line 224
    .local v23, "padding":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    move/from16 v0, v23

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v20, v23

    move/from16 v0, v23

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 230
    const v1, 0x3f155556

    mul-float v17, v1, v25

    .line 231
    .local v17, "cutWidth":F
    const v1, 0x3e2aaaab

    mul-float v16, v1, v25

    .line 232
    .local v16, "cutHeight":F
    const/high16 v1, 0x3e000000    # 0.125f

    mul-float v6, v1, v20

    .line 233
    .local v6, "dotSize":F
    const v1, 0x3d2aaaab

    mul-float v18, v1, v20

    .line 235
    .local v18, "dotPadding":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move/from16 v0, v17

    neg-float v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v16

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 240
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v18

    add-float v19, v1, v6

    .line 241
    .local v19, "dotSpacing":F
    sub-float v1, v25, v23

    sub-float v4, v1, v6

    .line 242
    .local v4, "x":F
    sub-float v1, v20, v23

    sub-float v5, v1, v6

    .line 243
    .local v5, "y":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/4 v7, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 245
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    sub-float v10, v4, v19

    const/4 v13, 0x1

    move-object/from16 v7, p0

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 246
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v19

    sub-float v10, v4, v1

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move v11, v5

    move v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->drawDot(Landroid/graphics/Path;Landroid/graphics/Path;FFFI)V

    .line 256
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "dotSize":F
    .end local v16    # "cutHeight":F
    .end local v17    # "cutWidth":F
    .end local v18    # "dotPadding":F
    .end local v19    # "dotSpacing":F
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 257
    const v1, 0x3daaaaab

    mul-float v17, v1, v20

    .line 258
    .restart local v17    # "cutWidth":F
    sget v1, Lcom/android/systemui/statusbar/phone/SignalDrawable;->INV_TAN:F

    mul-float v15, v17, v1

    .line 261
    .local v15, "cutDiagInset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    .line 264
    sub-float v3, v20, v23

    sub-float v3, v3, v17

    .line 263
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    add-float v3, v23, v15

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    add-float v2, v23, v15

    sub-float v3, v20, v23

    sub-float v3, v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v2, v2, v17

    .line 268
    sub-float v3, v20, v23

    sub-float v3, v3, v17

    .line 267
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mCutPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 286
    .end local v15    # "cutDiagInset":F
    .end local v17    # "cutWidth":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 288
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float v2, v2, v25

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    const/4 v7, 0x0

    aget-object v3, v3, v7

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v3, v3, v20

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 291
    const/16 v21, 0x1

    .local v21, "i":I
    :goto_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    array-length v1, v1

    move/from16 v0, v21

    if-ge v0, v1, :cond_7

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    sget-object v2, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v2, v2, v21

    const/4 v3, 0x0

    aget v2, v2, v3

    mul-float v2, v2, v25

    sget-object v3, Lcom/android/systemui/statusbar/phone/SignalDrawable;->X_PATH:[[F

    aget-object v3, v3, v21

    const/4 v7, 0x1

    aget v3, v3, v7

    mul-float v3, v3, v20

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 291
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 212
    .end local v20    # "height":F
    .end local v21    # "i":I
    .end local v23    # "padding":F
    .end local v25    # "width":F
    :cond_3
    const/16 v22, 0x0

    .local v22, "isRtl":Z
    goto/16 :goto_0

    .line 247
    .end local v22    # "isRtl":Z
    .restart local v20    # "height":F
    .restart local v23    # "padding":F
    .restart local v25    # "width":F
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 248
    const v1, 0x3ea88889

    mul-float v14, v1, v25

    .line 249
    .local v14, "cut":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sub-float v2, v25, v23

    sub-float v3, v20, v23

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    neg-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    neg-float v3, v14

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v14, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v14}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_1

    .line 273
    .end local v14    # "cut":F
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mSlash:Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;

    move/from16 v0, v20

    float-to-int v2, v0

    move/from16 v0, v25

    float-to-int v3, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v3, v0, v7}, Lcom/android/systemui/statusbar/phone/SignalDrawable$SlashArtist;->draw(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 278
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 280
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->calcFit(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v23

    sub-float v2, v25, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 281
    .local v24, "sigWidth":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move/from16 v0, v24

    int-to-float v1, v0

    add-float v10, v23, v1

    sub-float v11, v20, v23

    .line 282
    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v8, v23

    move/from16 v9, v23

    .line 281
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mFullPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_2

    .line 294
    .end local v24    # "sigWidth":I
    .restart local v21    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mXPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 296
    .end local v21    # "i":I
    :cond_8
    if-eqz v22, :cond_9

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 299
    :cond_9
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0xff

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 208
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 170
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getNumLevels(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setNumLevels(I)V

    .line 171
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setSignalState(I)V

    .line 172
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getLevel(I)I

    move-result v0

    .line 173
    .local v0, "level":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    if-eq v0, v1, :cond_0

    .line 174
    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mLevel:I

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 177
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 332
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 356
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mAutoMirrored:Z

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 359
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 338
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 2
    .param p1, "darkIntensity"    # F

    .prologue
    .line 181
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getBackgroundColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getFillColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mOldDarkIntensity:F

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 188
    return-void
.end method

.method public setIntrinsicSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mIntrinsicSize:I

    .line 132
    return-void
.end method

.method public setNumLevels(I)V
    .locals 2
    .param p1, "levels"    # I

    .prologue
    .line 145
    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mNumLevels:F

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->invalidateSelf()V

    .line 148
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SignalDrawable;->mVisible:Z

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->updateAnimation()V

    .line 349
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method
