.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/Recents$1;,
        Lcom/android/systemui/recents/Recents$2;
    }
.end annotation


# static fields
.field public static final RECENTS_ACTIVITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

.field private static sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

.field private static sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private static sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;


# instance fields
.field private mDraggingInRecentsCurrentUser:I

.field private mHandler:Landroid/os/Handler;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mOnConnectRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideRecentsPackageName:Ljava/lang/String;

.field private mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

.field private mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

.field private final mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

.field private final mUserToSystemServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/Recents;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/Recents;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/RecentsImpl;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/Recents;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/Recents;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/Recents;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/Recents;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/Recents;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get4()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/Recents;
    .param p1, "-value"    # Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/Recents;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/recents/Recents;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    .line 87
    sget-object v0, Lcom/android/systemui/recents/Recents;->RECENTS_ACTIVITIES:Ljava/util/Set;

    const-string/jumbo v1, "com.android.systemui.recents.RecentsActivity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/android/systemui/recents/Recents$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$1;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacksDeathRcpt:Landroid/os/IBinder$DeathRecipient;

    .line 144
    new-instance v0, Lcom/android/systemui/recents/Recents$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$2;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    .line 75
    return-void
.end method

.method public static getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    return-object v0
.end method

.method private static getMetricsCounterForResizeMode(I)Ljava/lang/String;
    .locals 1
    .param p0, "resizeMode"    # I

    .prologue
    .line 487
    packed-switch p0, :pswitch_data_0

    .line 494
    :pswitch_0
    const-string/jumbo v0, "window_enter_incompatible"

    return-object v0

    .line 489
    :pswitch_1
    const-string/jumbo v0, "window_enter_unsupported"

    return-object v0

    .line 492
    :pswitch_2
    const-string/jumbo v0, "window_enter_supported"

    return-object v0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public static getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method private isUserSetup()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 770
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 770
    :cond_0
    return v1
.end method

.method public static logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "resizeMode"    # I

    .prologue
    .line 479
    if-nez p2, :cond_0

    .line 481
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 480
    const/16 v1, 0x187

    invoke-static {p0, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 483
    :cond_0
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->getMetricsCounterForResizeMode(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 484
    return-void
.end method

.method private postToSystemUser(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "onConnectRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x1

    .line 732
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemCallbacks:Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    if-nez v2, :cond_1

    .line 734
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 735
    .local v1, "systemUserServiceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/recents/RecentsSystemUserService;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 736
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 737
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mUserToSystemServiceConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 736
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 738
    .local v0, "bound":Z
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 739
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 740
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 738
    const v3, 0x8cdc

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 741
    if-nez v0, :cond_0

    .line 743
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/recents/Recents$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/Recents$9;-><init>(Lcom/android/systemui/recents/Recents;)V

    .line 748
    const-wide/16 v4, 0x1388

    .line 743
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 753
    .end local v0    # "bound":Z
    .end local v1    # "systemUserServiceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->runAndFlushOnConnectRunnables()V

    goto :goto_0
.end method

.method private proxyToOverridePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 780
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 783
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    const/4 v1, 0x1

    return v1

    .line 786
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private registerWithSystemUser()V
    .locals 2

    .prologue
    .line 713
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 714
    .local v0, "processUser":I
    new-instance v1, Lcom/android/systemui/recents/Recents$8;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/Recents$8;-><init>(Lcom/android/systemui/recents/Recents;I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method private runAndFlushOnConnectRunnables()V
    .locals 3

    .prologue
    .line 759
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 760
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 762
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mOnConnectRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 763
    return-void
.end method


# virtual methods
.method public cancelPreloadRecentApps()V
    .locals 6

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 400
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->cancelPreloadingRecents()V

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    .line 405
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 406
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_3

    .line 408
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->cancelPreloadingRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v2

    .line 410
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 413
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dockTopTask(IILandroid/graphics/Rect;I)Z
    .locals 13
    .param p1, "dragMode"    # I
    .param p2, "stackCreateMode"    # I
    .param p3, "initialBounds"    # Landroid/graphics/Rect;
    .param p4, "metricsDockAction"    # I

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v9

    if-nez v9, :cond_0

    .line 425
    const/4 v9, 0x0

    return v9

    .line 428
    :cond_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 429
    .local v5, "realSize":Landroid/graphics/Point;
    if-nez p3, :cond_1

    .line 430
    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v10, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 432
    new-instance p3, Landroid/graphics/Rect;

    .end local p3    # "initialBounds":Landroid/graphics/Rect;
    iget v9, v5, Landroid/graphics/Point;->x:I

    iget v10, v5, Landroid/graphics/Point;->y:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-direct {v0, v11, v12, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 435
    .restart local p3    # "initialBounds":Landroid/graphics/Rect;
    :cond_1
    sget-object v9, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v2

    .line 436
    .local v2, "currentUser":I
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 437
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 438
    .local v6, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v7

    .line 439
    .local v7, "screenPinningActive":Z
    if-eqz v6, :cond_4

    .line 440
    iget v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v4

    .line 441
    :goto_0
    if-eqz v6, :cond_8

    xor-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_8

    xor-int/lit8 v9, v7, 0x1

    if-eqz v9, :cond_8

    .line 442
    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget v11, v6, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    invoke-static {v9, v10, v11}, Lcom/android/systemui/recents/Recents;->logDockAttempt(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 443
    iget-boolean v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    if-eqz v9, :cond_7

    .line 444
    const/4 v9, -0x1

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    .line 445
    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 446
    iget-object v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 445
    move/from16 v0, p4

    invoke-static {v9, v0, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 448
    :cond_2
    sget-object v9, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v9, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 449
    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v10, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p3

    invoke-virtual {v9, v10, p1, p2, v0}, Lcom/android/systemui/recents/RecentsImpl;->dockTopTask(IIILandroid/graphics/Rect;)V

    .line 466
    :cond_3
    :goto_1
    iput v2, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 467
    const/4 v9, 0x1

    return v9

    .line 439
    :cond_4
    const/4 v4, 0x0

    .local v4, "isRunningTaskInHomeOrRecentsStack":Z
    goto :goto_0

    .line 451
    .end local v4    # "isRunningTaskInHomeOrRecentsStack":Z
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v9, :cond_3

    .line 453
    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v9, v2}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v1

    .line 454
    .local v1, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v1, :cond_6

    .line 456
    :try_start_0
    iget v9, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p3

    invoke-interface {v1, v9, p1, p2, v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->dockTopTask(IIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 458
    :catch_0
    move-exception v3

    .line 459
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "Recents"

    const-string/jumbo v10, "Callback failed"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 462
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string/jumbo v9, "Recents"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No SystemUI callbacks found for user: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 469
    .end local v1    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    .line 470
    const v11, 0x7f1101d3

    const/4 v12, 0x0

    .line 469
    invoke-direct {v10, v11, v12}, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 471
    const/4 v9, 0x0

    return v9

    .line 474
    :cond_8
    const/4 v9, 0x0

    return v9
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 791
    const-string/jumbo v0, "Recents"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public getSystemUserCallbacks()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    return-object v0
.end method

.method public hideRecentApps(ZZ)V
    .locals 6
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    return-void

    .line 299
    :cond_0
    const-string/jumbo v3, "com.android.systemui.recents.ACTION_HIDE"

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    return-void

    .line 303
    :cond_1
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 304
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/RecentsImpl;->hideRecents(ZZ)V

    .line 321
    :cond_2
    :goto_0
    return-void

    .line 307
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_2

    .line 309
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 310
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_4

    .line 312
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->hideRecents(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onBootCompleted()V

    .line 242
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    .line 686
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 650
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 651
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    new-instance v1, Lcom/android/systemui/recents/Recents$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$6;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 664
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .prologue
    .line 667
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 668
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 669
    new-instance v1, Lcom/android/systemui/recents/Recents$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$7;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 680
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .prologue
    .line 594
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 595
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 596
    .local v0, "processUser":I
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v3, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->applicationContext:Landroid/content/Context;

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    .line 610
    :goto_0
    return-void

    .line 599
    :cond_0
    new-instance v2, Lcom/android/systemui/recents/Recents$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/recents/Recents$3;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .prologue
    .line 616
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 617
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v2, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->applicationContext:Landroid/content/Context;

    iget v3, p1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->taskId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    .line 631
    :goto_0
    return-void

    .line 620
    :cond_0
    new-instance v1, Lcom/android/systemui/recents/Recents$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/Recents$4;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ShowUserToastEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ShowUserToastEvent;

    .prologue
    .line 689
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 690
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget v4, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget v5, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recents/RecentsImpl;->onShowCurrentUserToast(II)V

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_0

    .line 695
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 696
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_2

    .line 698
    :try_start_0
    iget v3, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    iget v4, p1, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    invoke-interface {v0, v3, v4}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showCurrentUserToast(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v2

    .line 700
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 703
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    .prologue
    .line 634
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v0

    .line 635
    .local v0, "processUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    new-instance v1, Lcom/android/systemui/recents/Recents$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$5;-><init>(Lcom/android/systemui/recents/Recents;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V

    .line 647
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 570
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 571
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 572
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->onConfigurationChanged()V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_0

    .line 576
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 577
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_2

    .line 579
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onConfigurationChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v2

    .line 581
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 584
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDraggingInRecents(F)V
    .locals 5
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 500
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecents(F)V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 506
    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 505
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 507
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_2

    .line 509
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecents(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 514
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 515
    iget v4, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 514
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 5
    .param p1, "velocity"    # F

    .prologue
    .line 523
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/RecentsImpl;->onDraggingInRecentsEnded(F)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 529
    iget v3, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 528
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 530
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_2

    .line 532
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->onDraggingInRecentsEnded(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "Recents"

    const-string/jumbo v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 537
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v2, "Recents"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No SystemUI callbacks found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 538
    iget v4, p0, Lcom/android/systemui/recents/Recents;->mDraggingInRecentsCurrentUser:I

    .line 537
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 6

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 368
    return-void

    .line 371
    :cond_0
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 372
    .local v1, "currentUser":I
    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->preloadRecents()V

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 378
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_3

    .line 380
    :try_start_0
    invoke-interface {v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->preloadRecents()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Recents"

    const-string/jumbo v4, "Callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 385
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v3, "Recents"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No SystemUI callbacks found for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->showNextAffiliatedTask()V

    .line 553
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsImpl;->showPrevAffiliatedTask()V

    .line 564
    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 9
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    return-void

    .line 255
    :cond_0
    const-string/jumbo v1, "com.android.systemui.recents.ACTION_SHOW"

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    return-void

    .line 259
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string/jumbo v4, "recentapps"

    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :goto_0
    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v6

    .line 265
    .local v6, "recentsGrowTarget":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v7

    .line 266
    .local v7, "currentUser":I
    sget-object v1, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    move v1, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 286
    :cond_2
    :goto_1
    return-void

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v1, v7}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 273
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_4

    .line 275
    const/4 v2, 0x0

    .line 276
    const/4 v3, 0x1

    const/4 v4, 0x0

    move v1, p1

    move v5, p2

    .line 275
    :try_start_1
    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->showRecents(ZZZZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 278
    :catch_0
    move-exception v8

    .line 279
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Recents"

    const-string/jumbo v2, "Callback failed"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 282
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v1, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No SystemUI callbacks found for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    .end local v0    # "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .end local v6    # "recentsGrowTarget":I
    .end local v7    # "currentUser":I
    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 202
    new-instance v2, Lcom/android/systemui/recents/RecentsDebugFlags;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/RecentsDebugFlags;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sDebugFlags:Lcom/android/systemui/recents/RecentsDebugFlags;

    .line 203
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 204
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoader;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 205
    new-instance v2, Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/systemui/recents/Recents;->sConfiguration:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 206
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 207
    new-instance v2, Lcom/android/systemui/recents/RecentsImpl;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/RecentsImpl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 210
    const-string/jumbo v2, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    const-string/jumbo v2, "persist.recents_override_pkg"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "cnStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mOverrideRecentsPackageName:Ljava/lang/String;

    .line 218
    .end local v0    # "cnStr":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 219
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 220
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/recents/Recents;->sTaskLoader:Lcom/android/systemui/recents/model/RecentsTaskLoader;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 225
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getProcessUser()I

    move-result v1

    .line 226
    .local v1, "processUser":I
    sget-object v2, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 230
    new-instance v2, Lcom/android/systemui/recents/RecentsSystemUser;

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/recents/RecentsSystemUser;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    .line 236
    :goto_0
    const-class v2, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v2, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 237
    return-void

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerWithSystemUser()V

    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 7

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    const-string/jumbo v4, "com.android.systemui.recents.ACTION_TOGGLE"

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/Recents;->proxyToOverridePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 335
    return-void

    .line 338
    :cond_1
    const-class v4, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/Recents;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerView;->growsRecents()I

    move-result v3

    .line 340
    .local v3, "growTarget":I
    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getCurrentUser()I

    move-result v1

    .line 341
    .local v1, "currentUser":I
    sget-object v4, Lcom/android/systemui/recents/Recents;->sSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isSystemUser(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 342
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecents(I)V

    .line 358
    :cond_2
    :goto_0
    return-void

    .line 344
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    if-eqz v4, :cond_2

    .line 346
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemToUserCallbacks:Lcom/android/systemui/recents/RecentsSystemUser;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 347
    .local v0, "callbacks":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    if-eqz v0, :cond_4

    .line 349
    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;->toggleRecents(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v2

    .line 351
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Recents"

    const-string/jumbo v5, "Callback failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 354
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No SystemUI callbacks found for user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
