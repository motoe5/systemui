.class public Lcom/android/systemui/pip/tv/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipManager$1;,
        Lcom/android/systemui/pip/tv/PipManager$2;,
        Lcom/android/systemui/pip/tv/PipManager$3;,
        Lcom/android/systemui/pip/tv/PipManager$4;,
        Lcom/android/systemui/pip/tv/PipManager$5;,
        Lcom/android/systemui/pip/tv/PipManager$Listener;,
        Lcom/android/systemui/pip/tv/PipManager$MediaListener;,
        Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private static sSettingsPackageAndClassNamePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClosePipRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private mCustomActions:Landroid/content/pm/ParceledListSlice;

.field private mDefaultPipBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastOrientation:I

.field private mLastPackagesResourceGranted:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/pip/tv/PipManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/pip/tv/PipManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMenuModePipBounds:Landroid/graphics/Rect;

.field private final mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

.field private mPipBounds:Landroid/graphics/Rect;

.field private mPipComponentName:Landroid/content/ComponentName;

.field private mPipMediaController:Landroid/media/session/MediaController;

.field private mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

.field private mPipTaskId:I

.field private final mResizePinnedStackRunnable:Ljava/lang/Runnable;

.field private mResumeResizePinnedStackRunnableState:I

.field private mSettingsPipBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mSuspendPipResizingReason:I

.field private mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "-value"    # Landroid/graphics/Rect;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "-value"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "-value"    # Landroid/graphics/Rect;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "-value"    # Landroid/content/ComponentName;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/tv/PipManager;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "removePipStack"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/pip/tv/PipManager;[Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->handleMediaResourceGranted([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->showPipMenu()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "controllers"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updateMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "PipManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 112
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    .line 121
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 130
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    .line 132
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$1;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$2;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$3;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$4;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    .line 161
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 599
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$5;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    .line 202
    return-void
.end method

.method private closePipInternal(Z)V
    .locals 5
    .param p1, "removePipStack"    # Z

    .prologue
    const/4 v4, 0x0

    .line 314
    iput v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 315
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 316
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 317
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 318
    if-eqz p1, :cond_0

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->removeStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 326
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipActivityClosed()V

    .line 325
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 321
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "removeStack failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    invoke-direct {p0, v4}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    .line 330
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/pip/tv/PipManager;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    if-nez v0, :cond_0

    .line 724
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/pip/tv/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 726
    :cond_0
    sget-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object v0
.end method

.method private getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 4

    .prologue
    .line 484
    const/4 v1, 0x0

    .line 486
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 490
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    return-object v1

    .line 487
    .restart local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "getStackInfo failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getState()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_0

    .line 420
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return v0

    .line 422
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return v0
.end method

.method private handleMediaResourceGranted([Ljava/lang/String;)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 495
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    const/4 v2, 0x0

    .line 498
    .local v2, "requestedFromLastPackages":Z
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 499
    iget-object v6, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v1, v6, v5

    .line 500
    .local v1, "packageName":Ljava/lang/String;
    array-length v8, p1

    move v3, v4

    :goto_2
    if-ge v3, v8, :cond_2

    aget-object v0, p1, v3

    .line 501
    .local v0, "newPackageName":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 502
    const/4 v2, 0x1

    .line 499
    .end local v0    # "newPackageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 500
    .restart local v0    # "newPackageName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 508
    .end local v0    # "newPackageName":Ljava/lang/String;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    .line 509
    if-nez v2, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    goto :goto_0
.end method

.method private isSettingsShown()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 578
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v5

    .line 579
    .local v5, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 580
    :cond_0
    return v10

    .line 582
    .end local v5    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v3

    .line 583
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "PipManager"

    const-string/jumbo v8, "Failed to detect top activity"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    return v10

    .line 586
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v5    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 587
    .local v6, "topActivity":Landroid/content/ComponentName;
    sget-object v7, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "componentName$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 588
    .local v1, "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 589
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 590
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 591
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 592
    :cond_3
    return v11

    .line 596
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    return v10
.end method

.method private loadConfigurationsAndApply(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 269
    iget v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 272
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 273
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f110397

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    .line 280
    const v1, 0x7f11038c

    .line 279
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 287
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 286
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private showPipMenu()V
    .locals 4

    .prologue
    .line 437
    sget-boolean v2, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PipManager"

    const-string/jumbo v3, "showPipMenu()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 439
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 440
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onShowPipMenu()V

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 442
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/pip/tv/PipMenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    const-string/jumbo v2, "custom_actions"

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 445
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 446
    return-void
.end method

.method private updateMediaController(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const/4 v2, 0x0

    .line 517
    .local v2, "mediaController":Landroid/media/session/MediaController;
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 518
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 519
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 522
    .local v0, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    move-object v2, v0

    .line 528
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "i":I
    .end local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eq v3, v2, :cond_3

    .line 529
    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 530
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 531
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-interface {v3}, Lcom/android/systemui/pip/tv/PipManager$MediaListener;->onMediaControllerChanged()V

    .line 530
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 518
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    .restart local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 533
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "mediaController":Landroid/media/session/MediaController;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-nez v3, :cond_4

    .line 534
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 535
    const-wide/16 v6, 0xbb8

    .line 534
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 540
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 537
    .restart local v1    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private updatePipVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    .line 731
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$Listener;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    return-void
.end method

.method public closePip()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    .line 311
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 736
    return-void
.end method

.method getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method getPlaybackState()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    .line 555
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    if-nez v4, :cond_1

    .line 556
    :cond_0
    return v6

    .line 558
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    .line 559
    .local v3, "state":I
    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 560
    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 559
    :cond_2
    const/4 v2, 0x1

    .line 566
    .local v2, "isPlaying":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    .line 567
    .local v0, "actions":J
    if-nez v2, :cond_5

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    .line 568
    const/4 v4, 0x1

    return v4

    .line 561
    .end local v0    # "actions":J
    .end local v2    # "isPlaying":Z
    :cond_3
    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 562
    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 563
    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    .line 564
    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    .line 565
    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    .restart local v2    # "isPlaying":Z
    goto :goto_0

    .end local v2    # "isPlaying":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_0

    .line 569
    .restart local v0    # "actions":J
    :cond_5
    if-eqz v2, :cond_6

    const-wide/16 v4, 0x2

    and-long/2addr v4, v0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    .line 570
    const/4 v4, 0x0

    return v4

    .line 572
    :cond_6
    return v6
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 208
    iget-boolean v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    if-eqz v7, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iput-boolean v12, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    .line 212
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 215
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 216
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 217
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    sget-object v7, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    if-nez v7, :cond_3

    .line 222
    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 223
    const v8, 0x7f03004a

    .line 222
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "settings":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    .line 225
    if-eqz v6, :cond_3

    .line 226
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v7, v6, v2

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "packageAndClassName":[Ljava/lang/String;
    array-length v7, v5

    packed-switch v7, :pswitch_data_0

    .line 242
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 243
    sget-object v7, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 232
    .restart local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    aget-object v7, v5, v11

    invoke-static {v7, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 235
    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    aget-object v7, v5, v12

    if-eqz v7, :cond_1

    .line 236
    aget-object v7, v5, v12

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 235
    if-eqz v7, :cond_1

    .line 238
    aget-object v7, v5, v11

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v5, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .local v1, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 245
    .end local v1    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v7, "PipManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring malformed settings name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 252
    .end local v2    # "i":I
    .end local v5    # "packageAndClassName":[Ljava/lang/String;
    .end local v6    # "settings":[Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 253
    .local v3, "initialConfig":Landroid/content/res/Configuration;
    iget v7, v3, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 254
    invoke-direct {p0, v3}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 257
    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "media_session"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/MediaSessionManager;

    .line 256
    iput-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 260
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v8, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_3
    new-instance v7, Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {v7, p1}, Lcom/android/systemui/pip/tv/PipNotification;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    .line 266
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "PipManager"

    const-string/jumbo v8, "Failed to register pinned stack listener"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method movePipToFullscreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 337
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onMoveToFullscreen()V

    .line 337
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 341
    invoke-direct {p0, v2}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    .line 342
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    .line 295
    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$Listener;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 474
    return-void
.end method

.method resizePinnedStack(I)V
    .locals 10
    .param p1, "state"    # I

    .prologue
    .line 373
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizePinnedStack() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    if-nez v0, :cond_1

    const/4 v9, 0x1

    .line 375
    .local v9, "wasStateNoPip":Z
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    .line 376
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v0}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipResizeAboutToStart()V

    .line 375
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 374
    .end local v8    # "i":I
    .end local v9    # "wasStateNoPip":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "wasStateNoPip":Z
    goto :goto_0

    .line 378
    .restart local v8    # "i":I
    :cond_2
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_4

    .line 379
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 380
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizePinnedStack() deferring mSuspendPipResizingReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 381
    iget v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    const-string/jumbo v2, " mResumeResizePinnedStackRunnableState="

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    iget v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3
    return-void

    .line 386
    :cond_4
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 387
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 403
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 407
    :cond_5
    :goto_2
    const/4 v6, -0x1

    .line 408
    .local v6, "animationDurationMs":I
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x4

    .line 409
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 408
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_3
    return-void

    .line 389
    .end local v6    # "animationDurationMs":I
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 392
    if-eqz v9, :cond_5

    .line 393
    return-void

    .line 397
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 400
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 410
    .restart local v6    # "animationDurationMs":I
    :catch_0
    move-exception v7

    .line 411
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipManager"

    const-string/jumbo v1, "resizeStack failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resumePipResizing(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 359
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 360
    return-void

    .line 362
    :cond_0
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "PipManager"

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumePipResizing() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    .line 365
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 2

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 302
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 304
    :cond_0
    return-void
.end method

.method public suspendPipResizing(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 349
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PipManager"

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "suspendPipResizing() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    .line 352
    return-void
.end method
