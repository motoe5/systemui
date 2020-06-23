.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSHost$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$H;,
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessPaddingTop:I

.field protected final mBrightnessView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private mDivider:Landroid/view/View;

.field protected mExpanded:Z

.field protected mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field protected mListening:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPageIndicator:Landroid/view/View;

.field private mPanelPaddingBottom:I

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/qs/QSPanel;->DEBUG:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$H;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 71
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 83
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 99
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->setOrientation(I)V

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    const v1, 0x7f0d00e5

    .line 103
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->setupTileLayout()V

    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    const v1, 0x7f0d00dd

    .line 109
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addDivider()V

    .line 118
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 123
    new-instance v2, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 124
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 125
    const v1, 0x7f0a005e

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 123
    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 126
    return-void
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    .line 534
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/plugins/qs/DetailAdapter;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    .line 522
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onToggleStateChanged(Z)V

    .line 528
    :cond_0
    return-void
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object v1

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    return-object v1
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 479
    sget-boolean v0, Lcom/android/systemui/qs/QSPanel;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 480
    const-string/jumbo v0, "QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleShowDetailImpl() called with: r = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 481
    const-string/jumbo v3, "], show = ["

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 481
    const-string/jumbo v3, "], x = ["

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 481
    const-string/jumbo v3, "], y = ["

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 481
    const-string/jumbo v3, "]"

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    if-eqz p2, :cond_2

    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 485
    if-eqz p2, :cond_1

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_1
    invoke-direct {p0, v1, p3, p4}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    .line 486
    return-void

    :cond_2
    move-object v0, v1

    .line 484
    goto :goto_0
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 465
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v2, p1, :cond_1

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 467
    :cond_1
    if-eqz p2, :cond_2

    .line 468
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 469
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v2, :cond_2

    return-void

    .line 471
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 472
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTileView;->getLeft()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTileView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 473
    .local v0, "x":I
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v3, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTop()I

    move-result v3

    add-int v1, v2, v3

    .line 474
    .local v1, "y":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    .line 475
    return-void
.end method

.method private logTiles()V
    .locals 5

    .prologue
    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 513
    .local v1, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 514
    const/4 v4, 0x1

    .line 513
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addDivider()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 131
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result v2

    .line 130
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method protected addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
    .locals 4
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "collapsedView"    # Z

    .prologue
    .line 364
    new-instance v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v1}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 365
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 367
    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 405
    .local v0, "callback":Lcom/android/systemui/plugins/qs/QSTile$Callback;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 406
    iput-object v0, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 407
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 408
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 409
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 415
    :cond_0
    return-object v1
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 537
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "spec":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 539
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 540
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 541
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    .line 545
    :cond_0
    return-void

    .line 539
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public closeDetail()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(II)V

    .line 441
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 444
    return-void
.end method

.method protected createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 1
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "collapsedView"    # Z

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v0

    return-object v0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/systemui/qs/QSPanel;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 349
    const-string/jumbo v0, "QSPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drawTile() called with: r = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], state = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 353
    return-void
.end method

.method getBrightnessView()Landroid/view/View;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method public getFooter()Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object v0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object v0
.end method

.method public getPageIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mPageIndicator:Landroid/view/View;

    return-object v0
.end method

.method getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object v0
.end method

.method getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 553
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    if-ne v2, p1, :cond_0

    .line 554
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    return-object v2

    .line 557
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 451
    instance-of v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v2, :cond_0

    .line 452
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    .line 462
    :goto_0
    return-void

    .line 454
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    const/4 v0, 0x0

    .line 455
    .local v0, "x":I
    const/4 v1, 0x0

    .line 456
    .local v1, "y":I
    if-eqz p1, :cond_1

    .line 457
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 458
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 460
    :cond_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method public isShowingCustomize()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 157
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "qs_show_brightness"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 161
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->onConfigurationChanged()V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 259
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 165
    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v2, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 170
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    .line 172
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 173
    return-void
.end method

.method public onTilesChanged()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 178
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 182
    const-string/jumbo v1, "qs_show_brightness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_1
    return-void

    .line 184
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 6
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v0

    .line 190
    .local v0, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v4

    aput v4, v2, v5

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    .line 191
    return-void
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 306
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 308
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    .line 309
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f0a005e

    .line 203
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 204
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    .line 205
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSliderView;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 207
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSliderView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    .line 208
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 209
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSDetail$Callback;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    .line 217
    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    return-void

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 491
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v0, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 493
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    .line 494
    return-void

    .line 491
    :cond_1
    const/4 v0, 0x0

    .local v0, "scanState":Z
    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 269
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 274
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez v0, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    goto :goto_0
.end method

.method setGridContentVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 498
    sget-boolean v1, Lcom/android/systemui/qs/QSPanel;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 499
    const-string/jumbo v1, "QSPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGridContentVisibility() called with: visible = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 503
    .local v0, "newVis":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 504
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 507
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 508
    return-void

    .line 502
    .end local v0    # "newVis":I
    :cond_2
    const/4 v0, 0x4

    .restart local v0    # "newVis":I
    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .param p2, "customizer"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    .line 224
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 287
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 288
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 296
    if-eqz p1, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    .line 302
    :cond_3
    :goto_0
    return-void

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_0
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    .line 333
    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 6
    .param p2, "collapsedView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 337
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v4, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 338
    iget-object v4, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v5, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    .line 340
    .end local v0    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 341
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "tile$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 342
    .local v2, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;

    goto :goto_1

    .line 344
    .end local v2    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_1
    return-void
.end method

.method protected setupTileLayout()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 145
    const v1, 0x7f0d00df

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return v0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    return-void

    :cond_0
    move v0, v2

    .line 328
    goto :goto_0
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/plugins/qs/DetailAdapter;
    .param p3, "locationInWindow"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 312
    aget v1, p3, v4

    .line 313
    .local v1, "xInWindow":I
    aget v2, p3, v5

    .line 314
    .local v2, "yInWindow":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 316
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 317
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 318
    aget v3, p3, v4

    sub-int v3, v1, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 319
    aget v3, p3, v5

    sub-int v3, v2, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 321
    aput v1, p3, v4

    .line 322
    aput v2, p3, v5

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 325
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    .line 566
    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    new-instance v0, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method

.method public updateResources()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 236
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f07023e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 237
    const v3, 0x7f070215

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 238
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    invoke-virtual {p0, v5, v3, v5, v4}, Lcom/android/systemui/qs/QSPanel;->setPadding(IIII)V

    .line 239
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 240
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    goto :goto_0

    .line 242
    .end local v0    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    .line 248
    :cond_2
    return-void
.end method
