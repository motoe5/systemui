.class public Lcom/android/systemui/qs/customize/QSCustomizer;
.super Landroid/widget/LinearLayout;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/QSCustomizer$1;,
        Lcom/android/systemui/qs/customize/QSCustomizer$2;
    }
.end annotation


# instance fields
.field private isShown:Z

.field private final mClipper:Lcom/android/systemui/qs/QSDetailClipper;

.field private final mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCustomizing:Z

.field private final mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mFinishedFetchingTiles:Z

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

.field private mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private mOpening:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field private mToolbar:Landroid/widget/Toolbar;

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/customize/TileAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p1, "customizing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x7f120253

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v3, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-boolean v7, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    .line 254
    new-instance v3, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .line 261
    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 278
    new-instance v3, Lcom/android/systemui/qs/customize/QSCustomizer$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 86
    new-instance v3, Lcom/android/systemui/qs/QSDetailClipper;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QSDetailClipper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00d3

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    const v3, 0x1020185

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar;

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 91
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 92
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101030b

    invoke-virtual {v3, v4, v2, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 93
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v2, Landroid/util/TypedValue;->resourceId:I

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    new-instance v4, Lcom/android/systemui/qs/customize/QSCustomizer$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/customize/QSCustomizer$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3, p0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 102
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v3}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 103
    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    const v5, 0x104057d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    invoke-interface {v3, v7, v8, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 104
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    const v4, 0x7f1103bb

    invoke-virtual {v3, v4}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 106
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 107
    new-instance v3, Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/qs/customize/TileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 108
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 110
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 111
    .local v1, "layout":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 112
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 114
    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    .line 115
    .local v0, "animator":Landroid/support/v7/widget/DefaultItemAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/DefaultItemAnimator;->setMoveDuration(J)V

    .line 116
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 118
    return-void
.end method

.method private queryTiles()V
    .locals 5

    .prologue
    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    .line 183
    new-instance v0, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM$2;-><init>(Ljava/lang/Object;)V

    .line 187
    .local v0, "tileQueryFetchCompletion":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method private reset()V
    .locals 6

    .prologue
    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "defTiles":Ljava/lang/String;
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 234
    .local v1, "tile":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "tile":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/qs/customize/TileAdapter;->resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V

    .line 237
    return-void
.end method

.method private save()V
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    .line 252
    :cond_0
    return-void
.end method

.method private setCustomizing(Z)V
    .locals 1
    .param p1, "customizing"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 213
    return-void
.end method

.method private setTileSpecs()V
    .locals 5

    .prologue
    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "specs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tile$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 242
    .local v1, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v1    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    .line 245
    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 246
    return-void
.end method

.method private updateNavBackDrop(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    const v2, 0x7f0a01cc

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "navBackdrop":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 131
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_0

    .line 132
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getOneNavEnabled()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    .line 135
    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_1
    return-void

    .line 131
    :cond_2
    const/4 v1, 0x0

    .local v1, "shouldShow":Z
    goto :goto_0

    .line 135
    .end local v1    # "shouldShow":Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public getOneNavEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 144
    const-string/jumbo v2, "fps_onenav_enabled"

    .line 142
    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 145
    .local v0, "isOneNavEnabled":Z
    :goto_0
    return v0

    .line 142
    .end local v0    # "isOneNavEnabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isOneNavEnabled":Z
    goto :goto_0
.end method

.method public hide(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 193
    iput-boolean v4, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 195
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->save()V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    iget v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCollapseAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    .line 201
    const v1, 0x7f110063

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 202
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 204
    :cond_0
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSCustomizer_7416()V
    .locals 2

    .prologue
    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/-$Lambda$OFSFzbLV5l5KmOQGG6P-9IOaSaM$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSCustomizer_7524()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mFinishedFetchingTiles:Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_QSCustomizer_9743()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(II)V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;)V

    .line 125
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 223
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x167

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->reset()V

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0
    .param p1, "notificationsQsContainer"    # Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 156
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSTileHost;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 152
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0
    .param p1, "qs"    # Lcom/android/systemui/plugins/qs/QS;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 160
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 163
    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    if-nez v0, :cond_0

    .line 164
    iput p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mX:I

    .line 165
    iput p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mY:I

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 167
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setTileSpecs()V

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mClipper:Lcom/android/systemui/qs/QSDetailClipper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mExpandAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->queryTiles()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mNotifQsContainer:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerShowing(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mContext:Landroid/content/Context;

    .line 176
    const v1, 0x7f110064

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 177
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 179
    :cond_0
    return-void
.end method
