.class public Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;
.source "NotificationIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;,
        Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualLayoutWidth:I

.field private mActualPaddingEnd:F

.field private mActualPaddingStart:F

.field private mAddAnimationStartIndex:I

.field private mAnimationsEnabled:Z

.field private mCannedAnimationStartIndex:I

.field private mChangingViewPositions:Z

.field private mDark:Z

.field private mDisallowNextAnimation:Z

.field private mDotPadding:I

.field private mIconSize:I

.field private final mIconStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFoldNotificationIcon:Z

.field private mIsStatusBar:Z

.field private mIsSupportNewSpec:Z

.field private mOpenedAmount:F

.field private mReplacingIcons:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowAllIcons:Z

.field private mSpeedBumpIndex:I

.field private mStaticDotRadius:I

.field private mVisualOverflowAdaption:F


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get1()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get3()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStatusBar:Z

    return v0
.end method

.method static synthetic -get9()Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->DOT_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;-><init>()V

    .line 82
    const-wide/16 v2, 0x64

    .line 73
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$2;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    .line 83
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    sget-object v2, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ICON_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mTempProperties:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$4;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    .line 101
    const-wide/16 v2, 0x32

    .line 94
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;-><init>()V

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$5;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNDARK_PROPERTIES:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, -0x31000000

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStatusBar:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSupportNewSpec:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsFoldNotificationIcon:Z

    .line 114
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    .line 118
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 119
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 120
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 123
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 124
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 125
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 130
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setWillNotDraw(Z)V

    .line 137
    return-void
.end method

.method private findFirstViewIndexAfter(F)I
    .locals 3
    .param p1, "translationX"    # F

    .prologue
    .line 273
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 276
    return v0

    .line 273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    return v2
.end method

.method private getActualPaddingEnd()F
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 432
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    return v0
.end method

.method private getActualPaddingStart()F
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    const/high16 v1, -0x31000000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 439
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    return v0
.end method

.method private getLayoutEnd()F
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private initDimens()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSupportNewSpec:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsFoldNotificationIcon:Z

    .line 144
    return-void
.end method

.method private isReplacingIcon(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 224
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    if-nez v5, :cond_0

    .line 225
    return v6

    .line 227
    :cond_0
    instance-of v5, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-nez v5, :cond_1

    .line 228
    return v6

    :cond_1
    move-object v1, p1

    .line 230
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 231
    .local v1, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 232
    .local v3, "sourceIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 234
    .local v4, "statusBarIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    if-eqz v4, :cond_2

    .line 235
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 236
    .local v2, "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v5, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    const/4 v5, 0x1

    return v5

    .line 240
    .end local v2    # "replacedIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_2
    return v6
.end method


# virtual methods
.method public applyIconStates()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 185
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 188
    .local v1, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 185
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    :cond_1
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 193
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mCannedAnimationStartIndex:I

    .line 194
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 195
    return-void
.end method

.method public calculateIconTranslations()V
    .locals 29

    .prologue
    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v23

    .line 304
    .local v23, "translationX":F
    const/4 v8, -0x1

    .line 305
    .local v8, "firstOverflowIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    .line 306
    .local v3, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const/4 v15, 0x5

    .line 307
    .local v15, "maxVisibleIcons":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v14

    .line 308
    .local v14, "layoutEnd":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x400ccccd    # 2.2f

    mul-float v26, v26, v27

    sub-float v19, v14, v26

    .line 310
    .local v19, "overflowStart":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSupportNewSpec:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStatusBar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsFoldNotificationIcon:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 311
    const/16 v26, 0x3

    move/from16 v0, v26

    if-le v3, v0, :cond_5

    .line 312
    const/4 v15, 0x2

    .line 316
    :goto_1
    move/from16 v19, v14

    .line 320
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    const/4 v11, 0x1

    .line 321
    .local v11, "hasAmbient":Z
    :goto_2
    const/16 v25, 0x0

    .line 322
    .local v25, "visualOverflowStart":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v3, :cond_10

    .line 323
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 324
    .local v24, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 325
    .local v13, "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move/from16 v0, v23

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v12, v0, :cond_7

    .line 327
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_7

    .line 326
    const/4 v10, 0x1

    .line 328
    .local v10, "forceOverflow":Z
    :goto_4
    add-int/lit8 v26, v3, -0x1

    move/from16 v0, v26

    if-ne v12, v0, :cond_9

    const/16 v17, 0x1

    .line 329
    .local v17, "noOverflowAfter":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    move/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v26, v24

    .line 330
    check-cast v26, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScaleFullyDark()F

    move-result v7

    .line 332
    .local v7, "drawingScale":F
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v26, v0

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_1

    .line 333
    if-eqz v17, :cond_b

    xor-int/lit8 v26, v11, 0x1

    if-eqz v26, :cond_b

    xor-int/lit8 v17, v10, 0x1

    .line 335
    .end local v17    # "noOverflowAfter":Z
    :cond_1
    :goto_7
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 336
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_3

    if-nez v10, :cond_2

    .line 337
    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v14, v26

    :goto_8
    cmpl-float v26, v23, v26

    if-ltz v26, :cond_3

    .line 338
    :cond_2
    if-eqz v17, :cond_d

    xor-int/lit8 v26, v10, 0x1

    if-eqz v26, :cond_d

    add-int/lit8 v8, v12, -0x1

    .line 339
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    add-int v22, v26, v27

    .line 340
    .local v22, "totalDotLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const v27, 0x3f99999a    # 1.2f

    mul-float v26, v26, v27

    add-float v26, v26, v19

    .line 341
    div-int/lit8 v27, v22, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 340
    sub-float v26, v26, v27

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    .line 340
    sub-float v26, v26, v27

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 340
    add-float v25, v26, v27

    .line 343
    if-eqz v10, :cond_e

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    .line 344
    add-float v26, v26, v25

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 344
    add-float v26, v26, v27

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 350
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 353
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 354
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_3

    .line 355
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 356
    .local v9, "firstOverflowView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 357
    .local v20, "overflowState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v26, v0

    sub-float v21, v14, v26

    .line 358
    .local v21, "totalAmount":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v21, v27

    add-float v26, v26, v27

    .line 359
    div-int/lit8 v27, v22, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 358
    sub-float v26, v26, v27

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f000000    # 0.5f

    mul-float v27, v27, v28

    .line 358
    sub-float v26, v26, v27

    .line 360
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 358
    add-float v16, v26, v27

    .line 361
    .local v16, "newPosition":F
    sub-float v26, v16, v25

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 362
    move/from16 v25, v16

    .line 368
    .end local v9    # "firstOverflowView":Landroid/view/View;
    .end local v16    # "newPosition":F
    .end local v20    # "overflowState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v21    # "totalAmount":F
    .end local v22    # "totalDotLength":I
    :cond_3
    :goto_b
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    mul-float v26, v26, v7

    add-float v23, v23, v26

    .line 322
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 306
    .end local v7    # "drawingScale":F
    .end local v10    # "forceOverflow":Z
    .end local v11    # "hasAmbient":Z
    .end local v12    # "i":I
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v14    # "layoutEnd":F
    .end local v15    # "maxVisibleIcons":I
    .end local v19    # "overflowStart":F
    .end local v24    # "view":Landroid/view/View;
    .end local v25    # "visualOverflowStart":F
    :cond_4
    move v15, v3

    .restart local v15    # "maxVisibleIcons":I
    goto/16 :goto_0

    .line 314
    .restart local v14    # "layoutEnd":F
    .restart local v19    # "overflowStart":F
    :cond_5
    const/4 v15, 0x3

    goto/16 :goto_1

    .line 320
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "hasAmbient":Z
    goto/16 :goto_2

    .line 327
    .restart local v12    # "i":I
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .restart local v24    # "view":Landroid/view/View;
    .restart local v25    # "visualOverflowStart":F
    :cond_7
    if-lt v12, v15, :cond_8

    const/4 v10, 0x1

    .restart local v10    # "forceOverflow":Z
    goto/16 :goto_4

    .end local v10    # "forceOverflow":Z
    :cond_8
    const/4 v10, 0x0

    .restart local v10    # "forceOverflow":Z
    goto/16 :goto_4

    .line 328
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "noOverflowAfter":Z
    goto/16 :goto_5

    .line 331
    :cond_a
    const/high16 v7, 0x3f800000    # 1.0f

    .restart local v7    # "drawingScale":F
    goto/16 :goto_6

    .line 333
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_7

    .end local v17    # "noOverflowAfter":Z
    :cond_c
    move/from16 v26, v19

    .line 337
    goto/16 :goto_8

    .line 338
    :cond_d
    move v8, v12

    goto/16 :goto_9

    .line 347
    .restart local v22    # "totalDotLength":I
    :cond_e
    sub-float v26, v23, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    .line 347
    mul-float v26, v26, v27

    add-float v25, v25, v26

    goto/16 :goto_a

    .line 365
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    sub-float v27, v28, v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    goto :goto_b

    .line 370
    .end local v7    # "drawingScale":F
    .end local v10    # "forceOverflow":Z
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v22    # "totalDotLength":I
    .end local v24    # "view":Landroid/view/View;
    :cond_10
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_15

    .line 371
    const/16 v18, 0x1

    .line 372
    .local v18, "numDots":I
    move/from16 v23, v25

    .line 373
    move v12, v8

    :goto_c
    if-ge v12, v3, :cond_15

    .line 374
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 375
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 376
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mStaticDotRadius:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDotPadding:I

    move/from16 v27, v0

    add-int v6, v26, v27

    .line 377
    .local v6, "dotWidth":I
    move/from16 v0, v23

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 378
    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-gt v0, v1, :cond_14

    .line 379
    const/16 v26, 0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v26, v0

    const v27, 0x3f4ccccd    # 0.8f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_12

    .line 380
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    .line 381
    add-int/lit8 v18, v18, -0x1

    .line 391
    :goto_d
    const/16 v26, 0x3

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    mul-int/lit8 v6, v6, 0x3

    .end local v6    # "dotWidth":I
    :cond_11
    int-to-float v0, v6

    move/from16 v26, v0

    .line 392
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    move/from16 v27, v0

    .line 391
    mul-float v26, v26, v27

    add-float v23, v23, v26

    .line 396
    :goto_e
    add-int/lit8 v18, v18, 0x1

    .line 373
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 384
    .restart local v6    # "dotWidth":I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsSupportNewSpec:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStatusBar:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsFoldNotificationIcon:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 385
    const/16 v26, 0x2

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_d

    .line 387
    :cond_13
    const/16 v26, 0x1

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_d

    .line 394
    :cond_14
    const/16 v26, 0x2

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->visibleState:I

    goto :goto_e

    .line 399
    .end local v6    # "dotWidth":I
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v18    # "numDots":I
    .end local v24    # "view":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 400
    .local v2, "center":Z
    if-eqz v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v26

    cmpg-float v26, v23, v26

    if-gez v26, :cond_17

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v26

    sub-float v26, v26, v23

    const/high16 v27, 0x40000000    # 2.0f

    div-float v4, v26, v27

    .line 402
    .local v4, "delta":F
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_16

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v26

    sub-float v26, v26, v25

    const/high16 v27, 0x40000000    # 2.0f

    div-float v5, v26, v27

    .line 406
    .local v5, "deltaIgnoringOverflow":F
    add-float v26, v5, v4

    const/high16 v27, 0x40000000    # 2.0f

    div-float v4, v26, v27

    .line 408
    .end local v5    # "deltaIgnoringOverflow":F
    :cond_16
    const/4 v12, 0x0

    :goto_f
    if-ge v12, v3, :cond_17

    .line 409
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 410
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 411
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v26, v0

    add-float v26, v26, v4

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 408
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 415
    .end local v4    # "delta":F
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v24    # "view":Landroid/view/View;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isLayoutRtl()Z

    move-result v26

    if-eqz v26, :cond_18

    .line 416
    const/4 v12, 0x0

    :goto_10
    if-ge v12, v3, :cond_18

    .line 417
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 418
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    .line 419
    .restart local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    iget v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    sub-float v26, v26, v27

    move/from16 v0, v26

    iput v0, v13, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->xTranslation:F

    .line 416
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 422
    .end local v13    # "iconState":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .end local v24    # "view":Landroid/view/View;
    :cond_18
    return-void
.end method

.method public getActualWidth()I
    .locals 2

    .prologue
    .line 474
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v0

    return v0

    .line 477
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    return v0
.end method

.method public getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    return-object v0
.end method

.method public getVisualOverflowAdaption()F
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    return v0
.end method

.method public hasOverflow()Z
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 520
    .local v0, "width":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingEnd()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NotificationIconContainer_10678(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->removeTransientView(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->initDimens()V

    .line 159
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 150
    .local v5, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getActualPaddingStart()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLayoutEnd()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v6, v8

    .line 164
    .local v0, "centerY":F
    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 165
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 170
    .local v5, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 171
    .local v2, "height":I
    int-to-float v6, v2

    div-float/2addr v6, v8

    sub-float v6, v0, v6

    float-to-int v4, v6

    .line 172
    .local v4, "top":I
    add-int v6, v4, v2

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 173
    if-nez v3, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconSize:I

    .line 165
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":I
    .end local v4    # "top":I
    .end local v5    # "width":I
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    if-eqz v6, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    .line 182
    :cond_2
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 199
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v1

    .line 201
    .local v1, "isReplacingIcon":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    .line 202
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    .line 203
    .local v2, "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    if-eqz v1, :cond_0

    .line 204
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justAdded:Z

    .line 205
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->-set0(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;Z)Z

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v2    # "v":Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 210
    .local v0, "childIndex":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 212
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_4

    .line 213
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 218
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    if-eqz v3, :cond_3

    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_3

    .line 219
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local p1    # "child":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v6, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 221
    :cond_3
    return-void

    .line 215
    .restart local p1    # "child":Landroid/view/View;
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 245
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 246
    instance-of v3, p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->isReplacingIcon(Landroid/view/View;)Z

    move-result v2

    .local v2, "isReplacingIcon":Z
    move-object v1, p1

    .line 248
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 249
    .local v1, "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibleState()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 249
    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTranslationX()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->findFirstViewIndexAfter(F)I

    move-result v0

    .line 252
    .local v0, "animationStartIndex":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    if-gez v3, :cond_2

    .line 253
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    .line 258
    .end local v0    # "animationStartIndex":I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    if-nez v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    if-nez v2, :cond_1

    .line 261
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addTransientView(Landroid/view/View;I)V

    .line 263
    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$LXFIno2oRJZZ-gA6IP_J1ZcMScc;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$LXFIno2oRJZZ-gA6IP_J1ZcMScc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    const/4 v4, 0x1

    invoke-virtual {v1, v5, v4, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(IZLjava/lang/Runnable;)V

    .line 267
    .end local v1    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v2    # "isReplacingIcon":Z
    :cond_1
    return-void

    .line 255
    .restart local v0    # "animationStartIndex":I
    .restart local v1    # "icon":Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v2    # "isReplacingIcon":Z
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAddAnimationStartIndex:I

    goto :goto_0
.end method

.method public resetViewStates()V
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 286
    .local v1, "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 287
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 288
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "iconState":Lcom/android/systemui/statusbar/stack/ViewState;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setActualLayoutWidth(I)V
    .locals 0
    .param p1, "actualLayoutWidth"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualLayoutWidth:I

    .line 457
    return-void
.end method

.method public setActualPaddingEnd(F)V
    .locals 0
    .param p1, "paddingEnd"    # F

    .prologue
    .line 460
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingEnd:F

    .line 464
    return-void
.end method

.method public setActualPaddingStart(F)V
    .locals 0
    .param p1, "paddingStart"    # F

    .prologue
    .line 467
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mActualPaddingStart:F

    .line 471
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 528
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 529
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 530
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIconStates:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/stack/ViewState;

    .line 532
    .local v1, "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 534
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 529
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childState":Lcom/android/systemui/statusbar/stack/ViewState;
    .end local v2    # "i":I
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mAnimationsEnabled:Z

    .line 539
    return-void
.end method

.method public setChangingViewPositions(Z)V
    .locals 0
    .param p1, "changingViewPositions"    # Z

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mChangingViewPositions:Z

    .line 482
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 5
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 485
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDark:Z

    .line 486
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    xor-int/lit8 v3, p2, 0x1

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mDisallowNextAnimation:Z

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 488
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 489
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 490
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDark(ZZJ)V

    .line 491
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 492
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->justUndarkened:Z

    .line 487
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    return-void
.end method

.method public setOpenedAmount(F)V
    .locals 0
    .param p1, "expandAmount"    # F

    .prologue
    .line 507
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mOpenedAmount:F

    .line 508
    return-void
.end method

.method public setReplacingIcons(Landroid/support/v4/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "replacingIcons":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarIcon;>;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mReplacingIcons:Landroid/support/v4/util/ArrayMap;

    .line 543
    return-void
.end method

.method public setShowAllIcons(Z)V
    .locals 0
    .param p1, "showAllIcons"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mShowAllIcons:Z

    .line 450
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "speedBumpIndex"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mSpeedBumpIndex:I

    .line 504
    return-void
.end method

.method public setStatusBar(Z)V
    .locals 0
    .param p1, "isStatusBar"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsStatusBar:Z

    .line 294
    return-void
.end method

.method public setVisualOverflowAdaption(F)V
    .locals 0
    .param p1, "visualOverflowAdaption"    # F

    .prologue
    .line 515
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mVisualOverflowAdaption:F

    .line 516
    return-void
.end method
