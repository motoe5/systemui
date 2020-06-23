.class public Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/qs/QSHost;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/qs/QSFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/qs/QSHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field protected final mPhoneCount:I

.field private final mQsFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "QSTileHost"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p3, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    .line 78
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSTileHost;->mPhoneCount:I

    .line 83
    new-instance v1, Lcom/android/systemui/qs/external/TileServices;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 88
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_qs_tiles"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 91
    return-void
.end method

.method public static getDefaultTileList(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const v2, 0x7f11040e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "defaultTileList":Ljava/lang/String;
    sget v1, Lcom/android/systemui/moto/NetworkStateTracker;->sPhoneCount:I

    .line 365
    .local v1, "phoneCount":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 366
    const v2, 0x7f11040f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 368
    const v2, 0x7f110410

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_qs_QSTileHost_6897(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .locals 1

    .prologue
    .line 186
    .local p0, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_qs_QSTileHost_6966(Ljava/util/Map$Entry;)V
    .locals 3

    .prologue
    .line 188
    .local p0, "tile":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "QSTileHost"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Destroying tile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSHost$Callback;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 281
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 284
    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .locals 6
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 270
    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 269
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "setting":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 272
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    .line 277
    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 276
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 278
    return-void
.end method

.method public addTile(Ljava/lang/String;I)V
    .locals 6
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 251
    sget-boolean v2, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "QSTileHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addTile spec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 253
    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 252
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "setting":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 255
    .local v1, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, p2, :cond_1

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    return-void

    .line 262
    :cond_2
    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 263
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sysui_qs_tiles"

    .line 264
    const-string/jumbo v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 263
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 265
    return-void
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, "previousTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newTiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .line 294
    .local v8, "NP":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 295
    .local v7, "NA":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_2

    .line 296
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 297
    .local v11, "tileSpec":Ljava/lang/String;
    const-string/jumbo v1, "custom("

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-interface {p2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    invoke-static {v11}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 300
    .local v9, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 301
    .local v5, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v4, Landroid/service/quicksettings/Tile;

    invoke-direct {v4}, Landroid/service/quicksettings/Tile;-><init>()V

    .line 303
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 301
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 304
    .local v0, "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 305
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v9, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 307
    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    goto :goto_1

    .line 310
    .end local v0    # "lifecycleManager":Lcom/android/systemui/qs/external/TileLifecycleManager;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "component":Landroid/content/ComponentName;
    .end local v11    # "tileSpec":Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "QSTileHost"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveCurrentTiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 312
    const-string/jumbo v3, ","

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 311
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 313
    return-void
.end method

.method public collapsePanels()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateCollapsePanels()V

    .line 147
    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 4
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    .line 318
    .local v1, "t":Lcom/android/systemui/plugins/qs/QSTile;
    if-eqz v1, :cond_0

    .line 319
    return-object v1

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "t":Lcom/android/systemui/plugins/qs/QSTile;
    :cond_1
    return-object v3
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 5
    .param p1, "tile"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "collapsedView"    # Z

    .prologue
    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 327
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/plugins/qs/QSFactory;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    .line 328
    .local v1, "view":Lcom/android/systemui/plugins/qs/QSTileView;
    if-eqz v1, :cond_0

    .line 329
    return-object v1

    .line 326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "view":Lcom/android/systemui/plugins/qs/QSTileView;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Default factory didn\'t create view for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public forceCollapsePanels()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateForceCollapsePanels()V

    .line 152
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object v0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object v0
.end method

.method public getTiles()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "spec"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 337
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/systemui/qs/QSTileHost;->getDefaultTileList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "defaultTileList":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 339
    const v5, 0x7f11040d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 340
    sget-boolean v5, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loaded tile specs from config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v4, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 346
    .local v0, "addedDefault":Z
    const-string/jumbo v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v3, v6, v5

    .line 347
    .local v3, "tile":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 346
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 342
    .end local v0    # "addedDefault":Z
    .end local v3    # "tile":Ljava/lang/String;
    .end local v4    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    sget-boolean v5, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "QSTileHost"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Loaded tile specs from setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    .restart local v0    # "addedDefault":Z
    .restart local v3    # "tile":Ljava/lang/String;
    .restart local v4    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v8, "default"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 350
    if-nez v0, :cond_1

    .line 351
    const-string/jumbo v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 352
    const/4 v0, 0x1

    goto :goto_2

    .line 355
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 358
    .end local v3    # "tile":Ljava/lang/String;
    :cond_5
    return-object v4
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 105
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/qs/QSFactory;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 109
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-virtual {v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sysui_qs_tiles"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .prologue
    .line 115
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/qs/QSFactory;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v2, "sysui_qs_tiles"

    invoke-virtual {v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "sysui_qs_tiles"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v10, "sysui_qs_tiles"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    move-object v3, p2

    .line 179
    .local v3, "originalValue":Ljava/lang/String;
    sget-boolean v10, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "QSTileHost"

    const-string/jumbo v11, "Recreating tiles"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    if-nez p2, :cond_2

    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 181
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110411

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 183
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10, p2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 184
    .local v8, "tileSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 185
    .local v0, "currentUser":I
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {v8, v10}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-ne v0, v10, :cond_3

    return-void

    .line 186
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/qs/-$Lambda$IBJehqneaOm5k50HAYVYZP0648A$1;

    invoke-direct {v11, v8}, Lcom/android/systemui/qs/-$Lambda$IBJehqneaOm5k50HAYVYZP0648A$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 187
    new-instance v11, Lcom/android/systemui/qs/-$Lambda$IBJehqneaOm5k50HAYVYZP0648A;

    invoke-direct {v11}, Lcom/android/systemui/qs/-$Lambda$IBJehqneaOm5k50HAYVYZP0648A;-><init>()V

    .line 186
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 191
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .local v2, "newTiles":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "tileSpec$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 193
    .local v6, "tileSpec":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile;

    .line 194
    .local v5, "tile":Lcom/android/systemui/plugins/qs/QSTile;
    if-eqz v5, :cond_9

    instance-of v10, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v10, :cond_5

    move-object v10, v5

    .line 195
    check-cast v10, Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v10}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v10

    if-ne v10, v0, :cond_9

    .line 196
    :cond_5
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 197
    sget-boolean v10, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Adding "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_6
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    .line 199
    instance-of v10, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-nez v10, :cond_7

    iget v10, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-eq v10, v0, :cond_7

    .line 200
    invoke-interface {v5, v0}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 202
    :cond_7
    invoke-virtual {v2, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_8
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 207
    :cond_9
    sget-boolean v10, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Creating tile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_a
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v5

    .line 210
    if-eqz v5, :cond_4

    .line 211
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 212
    invoke-interface {v5, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v4

    .line 219
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "QSTileHost"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating tile for spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 215
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_b
    :try_start_1
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 223
    .end local v5    # "tile":Lcom/android/systemui/plugins/qs/QSTile;
    .end local v6    # "tileSpec":Ljava/lang/String;
    :cond_c
    iput v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 224
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->clear()V

    .line 227
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 228
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_d

    .line 229
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {v10}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_d
    const-string/jumbo v10, ","

    invoke-static {v10, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    .line 234
    .local v9, "updatedValue":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 235
    iget-object v10, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "sysui_qs_tiles"

    .line 236
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    .line 235
    invoke-static {v10, v11, v9, v12}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 239
    :cond_e
    return-void
.end method

.method public openPanels()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateOpenPanels()V

    .line 157
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/qs/QSHost$Callback;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "tile"    # Landroid/content/ComponentName;

    .prologue
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 288
    .local v0, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 289
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 290
    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .locals 5
    .param p1, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    .local v0, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 246
    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 245
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 247
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    return-void
.end method
