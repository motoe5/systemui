.class public Lcom/android/systemui/volume/ConfigurableTexts;
.super Ljava/lang/Object;
.source "ConfigurableTexts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/ConfigurableTexts$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTextLabels:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/TextView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateAll:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ConfigurableTexts;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/ConfigurableTexts;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/volume/ConfigurableTexts;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ConfigurableTexts;
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "labelResId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/ConfigurableTexts;->setTextLabelH(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/ConfigurableTexts;
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "sp"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/ConfigurableTexts;->setTextSizeH(Landroid/widget/TextView;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/ConfigurableTexts$1;-><init>(Lcom/android/systemui/volume/ConfigurableTexts;)V

    iput-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mUpdateAll:Ljava/lang/Runnable;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private setTextLabelH(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "labelResId"    # I

    .prologue
    .line 77
    if-ltz p2, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/Util;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private setTextSizeH(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "sp"    # I

    .prologue
    .line 72
    int-to-float v0, p2

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    return-void
.end method


# virtual methods
.method public add(Landroid/widget/TextView;)I
    .locals 1
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 41
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/ConfigurableTexts;->add(Landroid/widget/TextView;I)I

    move-result v0

    return v0
.end method

.method public add(Landroid/widget/TextView;I)I
    .locals 7
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "labelResId"    # I

    .prologue
    .line 45
    if-nez p1, :cond_0

    const/4 v5, 0x0

    return v5

    .line 46
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 47
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v1, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 48
    .local v1, "fontScale":F
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 49
    .local v0, "density":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 50
    .local v2, "px":F
    div-float v5, v2, v1

    div-float/2addr v5, v0

    float-to-int v4, v5

    .line 51
    .local v4, "sp":I
    iget-object v5, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v5, Lcom/android/systemui/volume/ConfigurableTexts$2;

    invoke-direct {v5, p0, p1, v4}, Lcom/android/systemui/volume/ConfigurableTexts$2;-><init>(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    iget-object v5, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTextLabels:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return v4
.end method

.method public update()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mTexts:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/volume/ConfigurableTexts;->mUpdateAll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method
