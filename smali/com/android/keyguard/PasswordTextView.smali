.class public Lcom/android/keyguard/PasswordTextView;
.super Landroid/view/View;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextView$CharState;,
        Lcom/android/keyguard/PasswordTextView$UserActivityListener;
    }
.end annotation


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mCharPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGravity:I

.field private mPM:Landroid/os/PowerManager;

.field private mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/PasswordTextView$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextHeightRaw:I

.field private mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/PasswordTextView;)Ljava/util/Stack;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/PasswordTextView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget v0, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/PasswordTextView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/PasswordTextView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    .line 86
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 87
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    .line 91
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PasswordTextView;->setFocusableInTouchMode(Z)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PasswordTextView;->setFocusable(Z)V

    .line 119
    sget-object v3, Lcom/android/keyguard/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 121
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    .line 122
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 123
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PasswordTextView;->mDotSize:I

    .line 126
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 127
    const v4, 0x7f0701fa

    .line 126
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 125
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 132
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v4, "sans-serif-light"

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 136
    const-string/jumbo v4, "show_password"

    .line 135
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/PasswordTextView;->mShowPassword:Z

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    .line 138
    const v2, 0x10c000e

    .line 137
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 139
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    .line 140
    const v2, 0x10c000f

    .line 139
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    .line 142
    const v2, 0x10c000d

    .line 141
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    .line 144
    return-void

    .line 128
    :catchall_0
    move-exception v1

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    throw v1

    :cond_0
    move v1, v2

    .line 135
    goto :goto_0
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 182
    iget v2, p0, Lcom/android/keyguard/PasswordTextView;->mTextHeightRaw:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, v2, v3

    .line 183
    .local v1, "textHeight":F
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 185
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 186
    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 9

    .prologue
    .line 190
    const/4 v5, 0x0

    .line 191
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 192
    .local v4, "length":I
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 193
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    .line 194
    .local v1, "charLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 195
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 196
    .local v2, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    if-eqz v3, :cond_0

    .line 197
    int-to-float v6, v5

    iget v7, p0, Lcom/android/keyguard/PasswordTextView;->mCharPadding:I

    int-to-float v7, v7

    iget v8, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 199
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v1

    iget v8, v2, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_1
    int-to-float v6, v5

    return v6
.end method

.method private obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    new-instance v0, Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 266
    .local v0, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :goto_0
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 267
    return-object v0

    .line 263
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 264
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->reset()V

    goto :goto_0
.end method

.method private userActivity()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    invoke-interface {v0}, Lcom/android/keyguard/PasswordTextView$UserActivityListener;->onUserActivity()V

    .line 240
    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 8
    .param p1, "c"    # C

    .prologue
    const/4 v7, 0x1

    .line 206
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 207
    .local v4, "visibleChars":I
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 208
    .local v3, "textbefore":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 209
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 211
    .local v1, "newLength":I
    if-le v1, v4, :cond_1

    .line 212
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView;->obtainCharState(C)Lcom/android/keyguard/PasswordTextView$CharState;

    move-result-object v0

    .line 213
    .local v0, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_0
    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView$CharState;->startAppearAnimation()V

    .line 221
    if-le v1, v7, :cond_0

    .line 222
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 223
    .local v2, "previousState":Lcom/android/keyguard/PasswordTextView$CharState;
    iget-boolean v5, v2, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView$CharState;->swapToDotWhenAppearFinished()V

    .line 227
    .end local v2    # "previousState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 229
    return-void

    .line 215
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 216
    .restart local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    iput-char p1, v0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    goto :goto_0
.end method

.method public deleteLastChar()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 243
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 244
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 245
    .local v2, "textbefore":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 246
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 248
    .local v0, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    invoke-virtual {v0, v6, v7, v6, v7}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 249
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 251
    .end local v0    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView;->userActivity()V

    .line 252
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getDrawingWidth()F

    move-result v11

    .line 150
    .local v11, "totalDrawingWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    and-int/lit8 v2, v2, 0x7

    const/4 v12, 0x3

    if-ne v2, v12, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/PasswordTextView;->mGravity:I

    const/high16 v12, 0x800000

    and-int/2addr v2, v12

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getLayoutDirection()I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v2, v12

    int-to-float v2, v2

    sub-float v3, v2, v11

    .line 160
    .local v3, "currentDrawPosition":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 161
    .local v10, "length":I
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 162
    .local v7, "bounds":Landroid/graphics/Rect;
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v12

    .line 164
    .local v4, "charHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingTop()I

    move-result v12

    add-int/2addr v2, v12

    int-to-float v5, v2

    .line 165
    .local v5, "yPosition":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingTop()I

    move-result v12

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    .line 165
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 167
    iget v2, v7, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    int-to-float v6, v2

    .line 168
    .local v6, "charLength":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_2

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/PasswordTextView$CharState;

    .local v1, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    move-object/from16 v2, p1

    .line 170
    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/PasswordTextView$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v8

    .line 172
    .local v8, "charWidth":F
    add-float/2addr v3, v8

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    .end local v3    # "currentDrawPosition":F
    .end local v4    # "charHeight":I
    .end local v5    # "yPosition":F
    .end local v6    # "charLength":F
    .end local v7    # "bounds":Landroid/graphics/Rect;
    .end local v8    # "charWidth":F
    .end local v9    # "i":I
    .end local v10    # "length":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getPaddingLeft()I

    move-result v2

    int-to-float v3, v2

    .restart local v3    # "currentDrawPosition":F
    goto :goto_0

    .line 158
    .end local v3    # "currentDrawPosition":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v11, v12

    sub-float v3, v2, v12

    .restart local v3    # "currentDrawPosition":F
    goto :goto_0

    .line 174
    .restart local v4    # "charHeight":I
    .restart local v5    # "yPosition":F
    .restart local v6    # "charLength":F
    .restart local v7    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "i":I
    .restart local v10    # "length":I
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 323
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 325
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 331
    const-class v0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 334
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 336
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    .line 337
    return-void
.end method

.method public reset(ZZ)V
    .locals 24
    .param p1, "animated"    # Z
    .param p2, "announce"    # Z

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 272
    .local v18, "textbefore":Ljava/lang/String;
    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/PasswordTextView;->mText:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 274
    .local v12, "length":I
    add-int/lit8 v19, v12, -0x1

    div-int/lit8 v13, v19, 0x2

    .line 275
    .local v13, "middleIndex":I
    const-wide/16 v8, 0x28

    .line 276
    .local v8, "delayPerElement":J
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/PasswordTextView$CharState;

    .line 278
    .local v6, "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    if-eqz p1, :cond_1

    .line 280
    if-gt v11, v13, :cond_0

    .line 281
    mul-int/lit8 v7, v11, 0x2

    .line 286
    .local v7, "delayIndex":I
    :goto_1
    int-to-long v0, v7

    move-wide/from16 v20, v0

    .line 275
    const-wide/16 v22, 0x28

    .line 286
    mul-long v16, v20, v22

    .line 287
    .local v16, "startDelay":J
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v16

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 288
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 275
    const-wide/16 v22, 0x28

    .line 288
    mul-long v14, v22, v20

    .line 289
    .local v14, "maxDelay":J
    const-wide/16 v20, 0xc8

    move-wide/from16 v0, v20

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    const-wide/16 v22, 0xa0

    add-long v14, v20, v22

    .line 290
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1, v14, v15}, Lcom/android/keyguard/PasswordTextView$CharState;->startRemoveAnimation(JJ)V

    .line 291
    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView$CharState;->-wrap2(Lcom/android/keyguard/PasswordTextView$CharState;)V

    .line 276
    .end local v7    # "delayIndex":I
    .end local v14    # "maxDelay":J
    .end local v16    # "startDelay":J
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 283
    :cond_0
    sub-int v10, v11, v13

    .line 284
    .local v10, "distToMiddle":I
    add-int/lit8 v19, v12, -0x1

    add-int/lit8 v20, v10, -0x1

    mul-int/lit8 v20, v20, 0x2

    sub-int v7, v19, v20

    .restart local v7    # "delayIndex":I
    goto :goto_1

    .line 293
    .end local v7    # "delayIndex":I
    .end local v10    # "distToMiddle":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 296
    .end local v6    # "charState":Lcom/android/keyguard/PasswordTextView$CharState;
    :cond_2
    if-nez p1, :cond_3

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 299
    :cond_3
    if-eqz p2, :cond_4

    .line 300
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    .line 302
    :cond_4
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V
    .locals 2
    .param p1, "beforeText"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I
    .param p3, "removedCount"    # I
    .param p4, "addedCount"    # I

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->isShown()Z

    move-result v1

    .line 306
    if-eqz v1, :cond_1

    .line 309
    :cond_0
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 310
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 311
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 312
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 313
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 314
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 317
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    return-void
.end method

.method public setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V
    .locals 0
    .param p1, "userActivitiListener"    # Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    .line 233
    return-void
.end method
