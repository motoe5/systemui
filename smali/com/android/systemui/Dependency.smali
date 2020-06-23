.class public Lcom/android/systemui/Dependency;
.super Lcom/android/systemui/SystemUI;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/Dependency$DependencyKey;,
        Lcom/android/systemui/Dependency$DependencyProvider;
    }
.end annotation


# static fields
.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field private final mDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/Dependency$DependencyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_systemui_Dependency-mthref-0()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/android/systemui/util/leak/LeakDetector;->create()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_systemui_Dependency-mthref-1()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/android/systemui/UiOffloadThread;

    invoke-direct {v0}, Lcom/android/systemui/UiOffloadThread;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 121
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 120
    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 125
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "main_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 131
    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string/jumbo v1, "leak_report_email"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    .line 130
    sput-object v0, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    .line 134
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    .line 111
    return-void
.end method

.method public static clearDependencies()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 359
    return-void
.end method

.method public static destroy(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/function/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "destroy":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/Dependency;->destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 367
    return-void
.end method

.method private destroyDependency(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/function/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "destroy":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    .local v0, "dep":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 336
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 338
    :cond_0
    return-void
.end method

.method public static get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "cls":Lcom/android/systemui/Dependency$DependencyKey;, "Lcom/android/systemui/Dependency$DependencyKey<TT;>;"
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 312
    return-object v0

    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static initDependencies(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    if-eqz v1, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v0, Lcom/android/systemui/Dependency;

    invoke-direct {v0}, Lcom/android/systemui/Dependency;-><init>()V

    .line 346
    .local v0, "d":Lcom/android/systemui/Dependency;
    iput-object p0, v0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    .line 347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/Dependency;->mComponents:Ljava/util/Map;

    .line 348
    invoke-virtual {v0}, Lcom/android/systemui/Dependency;->start()V

    .line 349
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_10638()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_11785()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_11895()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 258
    new-instance v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-direct {v1, v0}, Lcom/android/systemui/plugins/PluginDependencyProvider;-><init>(Lcom/android/systemui/plugins/PluginManager;)V

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_12265()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_12670()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-direct {v0}, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_13161(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 286
    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_13218(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 287
    check-cast p3, Lcom/android/systemui/Dumpable;

    .end local p3    # "o":Ljava/lang/Object;
    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_13458(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 293
    instance-of v0, p0, Lcom/android/systemui/ConfigurationChangedReceiver;

    return v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_13535(Landroid/content/res/Configuration;Ljava/lang/Object;)V
    .locals 0
    .param p0, "newConfig"    # Landroid/content/res/Configuration;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 294
    check-cast p1, Lcom/android/systemui/ConfigurationChangedReceiver;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1, p0}, Lcom/android/systemui/ConfigurationChangedReceiver;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_7039()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "TimeTick"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 144
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_7239()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SysUiBg"

    .line 148
    const/16 v2, 0xa

    .line 147
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 149
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 150
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_7484()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_7574()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/android/systemui/ActivityStarterDelegate;

    invoke-direct {v0}, Lcom/android/systemui/ActivityStarterDelegate;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$-com_android_systemui_Dependency_9845()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "cls"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 317
    instance-of v1, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/Class;

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$DependencyProvider;

    .line 321
    .local v0, "provider":Lcom/android/systemui/Dependency$DependencyProvider;, "Lcom/android/systemui/Dependency$DependencyProvider<TT;>;"
    if-nez v0, :cond_1

    .line 322
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported dependency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    .end local v0    # "provider":Lcom/android/systemui/Dependency$DependencyProvider;, "Lcom/android/systemui/Dependency$DependencyProvider<TT;>;"
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 324
    .restart local v0    # "provider":Lcom/android/systemui/Dependency$DependencyProvider;, "Lcom/android/systemui/Dependency$DependencyProvider<TT;>;"
    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/Dependency$DependencyProvider;->createDependency()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 284
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/SystemUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "Dumping existing controllers:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$12;

    invoke-direct {v1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$12;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$48;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$48;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 288
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/Dependency$DependencyKey",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "key":Lcom/android/systemui/Dependency$DependencyKey;, "Lcom/android/systemui/Dependency$DependencyKey<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10099()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10214()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10315()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 217
    new-instance v1, Lcom/android/systemui/assist/AssistManager;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10467()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10695()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 226
    new-instance v2, Lcom/android/systemui/util/leak/LeakReporter;

    .line 227
    iget-object v3, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    .line 228
    const-class v0, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/LeakDetector;

    .line 229
    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 226
    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/util/leak/LeakReporter;-><init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V

    return-object v2
.end method

.method synthetic lambda$-com_android_systemui_Dependency_10894()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 231
    new-instance v3, Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 232
    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 233
    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/leak/LeakDetector;

    .line 234
    const-class v2, Lcom/android/systemui/util/leak/LeakReporter;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/leak/LeakReporter;

    .line 231
    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/util/leak/GarbageMonitor;-><init>(Landroid/os/Looper;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/util/leak/LeakReporter;)V

    return-object v3
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11110()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/TunerServiceImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11219()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11330()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11446()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11567()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_11680()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Lcom/android/systemui/fragments/FragmentService;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/fragments/FragmentService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12027()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12155()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12368()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_12493()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/android/systemui/ForegroundServiceControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/ForegroundServiceControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_7666()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_7778()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 158
    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_7916()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 161
    new-instance v1, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8057()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8171()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 167
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    .line 168
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 167
    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v2
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8380()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 171
    new-instance v1, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8518()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8624()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8733()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 180
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v1
.end method

.method synthetic lambda$-com_android_systemui_Dependency_8921()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9033()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 186
    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 187
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {p0, v1}, Lcom/android/systemui/Dependency;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const-class v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    .line 186
    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v3
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9273()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9383()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9497()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9614()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ManagedProfileControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9732()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NextAlarmControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_Dependency_9978()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    monitor-enter p0

    .line 292
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$13;

    invoke-direct {v1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$13;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 294
    new-instance v1, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$47;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$47;-><init>(Ljava/lang/Object;)V

    .line 293
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 295
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 138
    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$1;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$2;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$6;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$6;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ActivityStarterDelegate;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$39;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$39;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$42;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$42;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/LocationController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$43;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$43;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$44;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$44;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$45;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$45;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$46;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$46;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/HotspotController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$14;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/CastController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$15;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$16;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$17;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$18;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$19;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$20;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$20;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/app/NightDisplayController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$21;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$21;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/ManagedProfileController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$22;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$22;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$23;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$23;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DataSaverController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$3;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$24;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$24;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$25;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$25;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$26;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$26;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/assist/AssistManager;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$27;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$27;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$28;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$28;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$4;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$5;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/LeakReporter;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$29;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$29;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$30;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$30;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunerService;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$31;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$31;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$32;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$32;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$33;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$33;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$34;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$34;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$35;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$35;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/fragments/FragmentService;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$36;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$36;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$7;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/PluginDependencyProvider;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$8;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$8;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$37;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$37;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$38;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$38;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$9;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$9;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 269
    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$40;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$40;-><init>(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/ForegroundServiceController;

    .line 272
    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$41;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$41;-><init>(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$10;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$10;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    const-class v1, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    new-instance v2, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$11;

    invoke-direct {v2}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$11;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/Dependency;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SystemUIFactory;->injectDependencies(Landroid/util/ArrayMap;Landroid/content/Context;)V

    .line 280
    return-void
.end method
