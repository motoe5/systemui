.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    }
.end annotation


# instance fields
.field private final mCompletion:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileQueryHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileQueryHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/customize/TileQueryHelper;
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p4, "isSystem"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/qs/QSTileHost;
    .param p3, "listener"    # Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    .param p4, "completion"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 63
    iput-object p4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mCompletion:Ljava/lang/Runnable;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addSystemTiles()V

    .line 66
    return-void
.end method

.method private addPackageTiles(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "bgHandler"    # Landroid/os/Handler;

    .prologue
    .line 131
    new-instance v0, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method private addStockTiles(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 7
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "bgHandler"    # Landroid/os/Handler;

    .prologue
    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 83
    const-string/jumbo v6, ",location"

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    const-string/jumbo v6, ",hotspot,inversion,saver,work,cast"

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "possible":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->shouldAddAndroidNightLight()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",night"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/motorola/settingslib/ModUtils;->showModQsTile(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",mod_battery"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",custom(com.motorola.projectormod/.app.ProjectorQSTile)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_1
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "possibleTiles":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 99
    aget-object v3, v2, v0

    .line 100
    .local v3, "spec":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v4

    .line 101
    .local v4, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    if-nez v4, :cond_2

    .line 98
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 104
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_1

    .line 107
    :cond_3
    const/4 v5, 0x1

    invoke-interface {v4, p0, v5}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 108
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    .line 109
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 110
    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    .line 111
    new-instance v5, Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    invoke-direct {v5, p0, v4, p1, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 128
    .end local v3    # "spec":Ljava/lang/String;
    .end local v4    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_4
    return-void
.end method

.method private addSystemTiles()V
    .locals 3

    .prologue
    .line 70
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    .local v1, "qsHandler":Landroid/os/Handler;
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    .local v0, "mainHandler":Landroid/os/Handler;
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addStockTiles(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Landroid/os/Handler;Landroid/os/Handler;)V

    .line 75
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mCompletion:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method private addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "appLabel"    # Ljava/lang/CharSequence;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 206
    .local v0, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 207
    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 208
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 209
    const/4 v1, 0x0

    invoke-direct {p0, p1, p4, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 210
    return-void
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;
    .param p4, "isSystem"    # Z

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    .line 192
    .local v0, "info":Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 193
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 194
    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 195
    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 194
    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 196
    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    .line 197
    iput-object p2, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->appLabel:Ljava/lang/CharSequence;

    .line 198
    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    .line 199
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 3
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 180
    .local v0, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    return-object v2

    .line 184
    .end local v0    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private shouldAddAndroidNightLight()Z
    .locals 7

    .prologue
    .line 231
    const/4 v3, 0x1

    .line 233
    .local v3, "shouldAdd":Z
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 234
    return v3

    .line 239
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.motorola.actions"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 241
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 243
    const-string/jumbo v4, "com.motorola.actions:bool/show_night_display_on_settings"

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 242
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 245
    .local v2, "resId":I
    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 253
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resId":I
    .end local v3    # "shouldAdd":Z
    :cond_1
    :goto_0
    return v3

    .line 249
    .restart local v3    # "shouldAdd":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_qs_customize_TileQueryHelper_5332(Landroid/os/Handler;)V
    .locals 17
    .param p1, "mainHandler"    # Landroid/os/Handler;

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v11

    .line 133
    .local v11, "params":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/plugins/qs/QSTile;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 135
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/16 v16, 0x0

    .line 134
    move/from16 v0, v16

    invoke-virtual {v12, v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v13

    .line 136
    .local v13, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f110412

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "stockTiles":Ljava/lang/String;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 139
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 140
    .local v10, "packageName":Ljava/lang/String;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 148
    .local v6, "appLabel":Ljava/lang/CharSequence;
    invoke-static {v7}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "spec":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v14

    .line 150
    .local v14, "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    if-eqz v14, :cond_1

    .line 152
    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3, v6, v14}, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v1, :cond_2

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_0

    .line 159
    :cond_2
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 160
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 168
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v12}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 170
    .local v5, "label":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 174
    .end local v3    # "spec":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "appLabel":Ljava/lang/CharSequence;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v14    # "state":Lcom/android/systemui/plugins/qs/QSTile$State;
    :cond_3
    new-instance v1, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/customize/-$Lambda$pQ3JKx5515h-eZeun6umHO-Mluk;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_TileQueryHelper_6497(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/CharSequence;
    .param p3, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_TileQueryHelper_7337(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "appLabel"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    if-eqz p3, :cond_0

    .line 171
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V

    return-void

    .line 171
    :cond_0
    const-string/jumbo v3, "null"

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_qs_customize_TileQueryHelper_7530()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    return-void
.end method
