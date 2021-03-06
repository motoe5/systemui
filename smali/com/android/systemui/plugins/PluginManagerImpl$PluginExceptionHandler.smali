.class Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginExceptionHandler"
.end annotation


# instance fields
.field private final mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/android/systemui/plugins/PluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugins/PluginManagerImpl;
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p2, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugins/PluginManagerImpl;
    .param p2, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p3, "-this2"    # Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private checkStack(Ljava/lang/Throwable;)Z
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 351
    if-nez p1, :cond_0

    return v4

    .line 352
    :cond_0
    const/4 v0, 0x0

    .line 353
    .local v0, "disabledAny":Z
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    .end local v0    # "disabledAny":Z
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    .line 354
    .local v1, "element":Ljava/lang/StackTraceElement;
    iget-object v7, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-static {v7}, Lcom/android/systemui/plugins/PluginManagerImpl;->-get0(Lcom/android/systemui/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "manager$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 355
    .local v2, "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/systemui/plugins/PluginInstanceManager;->checkAndDisable(Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .local v0, "disabledAny":Z
    goto :goto_1

    .line 353
    .end local v0    # "disabledAny":Z
    .end local v2    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    .end local v3    # "manager$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;)Z

    move-result v4

    or-int/2addr v4, v0

    return v4
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 331
    const-string/jumbo v3, "plugin.debugging"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 333
    return-void

    .line 336
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;)Z

    move-result v0

    .line 337
    .local v0, "disabledAny":Z
    if-nez v0, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-static {v3}, Lcom/android/systemui/plugins/PluginManagerImpl;->-get0(Lcom/android/systemui/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "manager$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 342
    .local v1, "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    invoke-virtual {v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->disableAll()V

    goto :goto_0

    .line 347
    .end local v1    # "manager":Lcom/android/systemui/plugins/PluginInstanceManager;
    .end local v2    # "manager$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 348
    return-void
.end method
