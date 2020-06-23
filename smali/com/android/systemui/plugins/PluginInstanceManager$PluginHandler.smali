.class Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginHandler"
.end annotation


# instance fields
.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/plugins/PluginInstanceManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/PluginInstanceManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 215
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    .local p1, "this$0":Lcom/android/systemui/plugins/PluginInstanceManager;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>;"
    iput-object p1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    .line 216
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    .line 217
    return-void
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/VersionInfo;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 5
    .param p3, "version"    # Lcom/android/systemui/plugins/VersionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;TT;",
            "Lcom/android/systemui/plugins/VersionInfo;",
            ")",
            "Lcom/android/systemui/plugins/VersionInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    .local p1, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    new-instance v2, Lcom/android/systemui/plugins/VersionInfo;

    invoke-direct {v2}, Lcom/android/systemui/plugins/VersionInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v1

    .line 366
    .local v1, "pv":Lcom/android/systemui/plugins/VersionInfo;
    invoke-virtual {v1}, Lcom/android/systemui/plugins/VersionInfo;->hasVersionInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-virtual {p3, v1}, Lcom/android/systemui/plugins/VersionInfo;->checkVersion(Lcom/android/systemui/plugins/VersionInfo;)V

    .line 375
    return-object v1

    .line 369
    :cond_0
    invoke-interface {p2}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v0

    .line 370
    .local v0, "fallbackVersion":I
    invoke-virtual {p3}, Lcom/android/systemui/plugins/VersionInfo;->getDefaultVersion()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 371
    new-instance v2, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    const-string/jumbo v3, "Invalid legacy version"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 373
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    const/4 v8, 0x1

    .line 264
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get1(Lcom/android/systemui/plugins/PluginInstanceManager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 271
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get2(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 273
    const-string/jumbo v6, "PluginInstanceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Multiple plugins found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v8}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get1(Lcom/android/systemui/plugins/PluginInstanceManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void

    .line 276
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 277
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 278
    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 277
    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v3, "name":Landroid/content/ComponentName;
    invoke-virtual {p0, v3}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    move-result-object v5

    .line 280
    .local v5, "t":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    if-eqz v5, :cond_2

    .line 281
    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    iget-object v6, v6, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    invoke-virtual {v6, v8, v5}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 282
    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v5    # "t":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method protected handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;
    .locals 25
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 291
    const-string/jumbo v4, "PluginInstanceManager"

    const-string/jumbo v22, "Somehow hit second debuggable check"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v4, 0x0

    return-object v4

    .line 294
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, "cls":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    .line 299
    .local v17, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v22, "com.android.systemui.permission.PLUGIN"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    const-string/jumbo v4, "PluginInstanceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Plugin doesn\'t have permission: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v4, 0x0

    return-object v4

    .line 305
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get5(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginManagerImpl;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/plugins/PluginManagerImpl;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10

    .line 306
    .local v10, "classLoader":Ljava/lang/ClassLoader;
    new-instance v8, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v4

    .line 306
    invoke-direct {v8, v4, v10}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 308
    .local v8, "pluginContext":Landroid/content/Context;
    const/4 v4, 0x1

    invoke-static {v6, v4, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v21

    .line 311
    .local v21, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/Plugin;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    .local v7, "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get7(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v4}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/VersionInfo;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v9

    .line 315
    .local v9, "version":Lcom/android/systemui/plugins/VersionInfo;
    new-instance v4, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/plugins/VersionInfo;)V
    :try_end_1
    .catch Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 316
    .end local v9    # "version":Lcom/android/systemui/plugins/VersionInfo;
    :catch_0
    move-exception v12

    .line 317
    .local v12, "e":Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v22, "tuner"

    const-string/jumbo v23, "drawable"

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 317
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 319
    .local v16, "icon":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 320
    const-string/jumbo v22, "system_notification_accent_color"

    const-string/jumbo v23, "color"

    const-string/jumbo v24, "android"

    .line 319
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 321
    .local v11, "color":I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v22

    .line 322
    const-string/jumbo v23, "ALR"

    .line 321
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    new-instance v22, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v22 .. v22}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 321
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 325
    const-wide/16 v22, 0x0

    .line 321
    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 326
    const/16 v22, 0x0

    .line 321
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 327
    const/16 v22, 0x1

    .line 321
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v22

    .line 321
    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v19

    .line 329
    .local v19, "nb":Landroid/app/Notification$Builder;
    move-object/from16 v18, v6

    .line 331
    .local v18, "label":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    .line 334
    :goto_0
    :try_start_4
    invoke-virtual {v12}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->isTooNew()Z

    move-result v4

    if-nez v4, :cond_2

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Plugin \""

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v22, "\" is too old"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 337
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Contact plugin developer to get an updated version.\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 338
    invoke-virtual {v12}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v23

    .line 337
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 336
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 345
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v22, "com.android.systemui.action.DISABLE_PLUGIN"

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "package://"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 345
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v15

    .line 347
    .local v15, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v0, v15, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 348
    .local v20, "pi":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Action$Builder;

    const-string/jumbo v22, "Disable plugin"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    const-class v22, Landroid/app/NotificationManager;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 350
    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    .line 351
    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 350
    const/16 v24, 0x6

    .line 349
    move/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 353
    const-string/jumbo v4, "PluginInstanceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Plugin has invalid interface version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v7}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 354
    const-string/jumbo v23, ", expected "

    .line 353
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get7(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v23

    .line 353
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v4, 0x0

    return-object v4

    .line 341
    .end local v15    # "i":Landroid/content/Intent;
    .end local v20    # "pi":Landroid/app/PendingIntent;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Plugin \""

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v22, "\" is too new"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 342
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Check to see if an OTA is available.\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 343
    invoke-virtual {v12}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v23

    .line 342
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 341
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 357
    .end local v7    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    .end local v8    # "pluginContext":Landroid/content/Context;
    .end local v10    # "classLoader":Ljava/lang/ClassLoader;
    .end local v11    # "color":I
    .end local v12    # "e":Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    .end local v16    # "icon":I
    .end local v17    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "label":Ljava/lang/String;
    .end local v19    # "nb":Landroid/app/Notification$Builder;
    .end local v21    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v13

    .line 358
    .local v13, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "PluginInstanceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Couldn\'t load plugin: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    const/4 v4, 0x0

    return-object v4

    .line 332
    .end local v13    # "e":Ljava/lang/Throwable;
    .restart local v7    # "plugin":Lcom/android/systemui/plugins/Plugin;, "TT;"
    .restart local v8    # "pluginContext":Landroid/content/Context;
    .restart local v10    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v11    # "color":I
    .restart local v12    # "e":Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
    .restart local v16    # "icon":I
    .restart local v17    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "label":Ljava/lang/String;
    .restart local v19    # "nb":Landroid/app/Notification$Builder;
    .restart local v21    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v14

    .local v14, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 221
    .local p0, "this":Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;, "Lcom/android/systemui/plugins/PluginInstanceManager<TT;>.PluginHandler;"
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 225
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    .line 226
    .local v3, "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get4(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object v5

    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    .line 227
    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v4, :cond_1

    .line 230
    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v4}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    .line 224
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 233
    .end local v3    # "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 234
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 238
    .local v2, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_0

    .line 239
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    .line 240
    .restart local v3    # "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    iget-object v4, v4, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    .line 242
    iget-object v5, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 241
    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 243
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 238
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 248
    .end local v0    # "i":I
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "plugin":Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;, "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo<TT;>;"
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 250
    .local v1, "p":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get2(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 251
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
