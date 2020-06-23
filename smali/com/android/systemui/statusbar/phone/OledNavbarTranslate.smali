.class public Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;
.super Ljava/lang/Object;
.source "OledNavbarTranslate.java"


# static fields
.field static sInstance:Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

.field public static final sTransValue:[I


# instance fields
.field public mCurrentTansY:F

.field public mCurrentTransX:F

.field private mLastTransX:I

.field private mLastTransY:I

.field private mRandom:Ljava/util/Random;

.field private mSupportOled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->sInstance:Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

    .line 22
    const/4 v0, 0x1

    const/4 v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->sTransValue:[I

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mSupportOled:Z

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mRandom:Ljava/util/Random;

    .line 40
    iput v2, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    .line 41
    iput v2, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    .line 42
    iput v1, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mLastTransX:I

    .line 43
    iput v1, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mLastTransY:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mSupportOled:Z

    .line 45
    return-void
.end method

.method private calucateTranslate()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v7, -0x3e800000    # -16.0f

    .line 49
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 50
    .local v1, "mRandX":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mRandom:Ljava/util/Random;

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 51
    .local v2, "mRandY":I
    sget-object v5, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->sTransValue:[I

    aget v3, v5, v1

    .line 52
    .local v3, "mTransX":I
    sget-object v5, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->sTransValue:[I

    aget v4, v5, v2

    .line 54
    .local v4, "mTransY":I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mLastTransX:I

    neg-int v5, v5

    if-ne v3, v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mLastTransY:I

    neg-int v5, v5

    if-eq v4, v5, :cond_0

    .line 57
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    int-to-float v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    .line 58
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    int-to-float v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "count":I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    .line 61
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    .line 62
    const/4 v0, 0x1

    .line 64
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    .line 65
    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    int-to-float v6, v4

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_5
    const/4 v5, 0x1

    if-le v0, v5, :cond_6

    .line 71
    const/4 v3, 0x0

    .line 72
    neg-int v4, v4

    .line 73
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    const/4 v6, 0x0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    .line 74
    iget v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    int-to-float v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    .line 76
    :cond_6
    iput v3, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mLastTransX:I

    .line 77
    iput v4, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mLastTransY:I

    .line 80
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->sInstance:Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->sInstance:Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

    .line 35
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->sInstance:Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;

    return-object v0
.end method


# virtual methods
.method public doNavBarTranslation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mSupportOled:Z

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->calucateTranslate()V

    .line 86
    if-eqz p1, :cond_1

    .line 87
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 88
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 90
    :cond_1
    return-void
.end method

.method public refreshCurrentTranslation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mSupportOled:Z

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    if-eqz p1, :cond_1

    .line 96
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTransX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OledNavbarTranslate;->mCurrentTansY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    :cond_1
    return-void
.end method
