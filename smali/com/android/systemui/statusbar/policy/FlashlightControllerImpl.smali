.class public Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.super Ljava/lang/Object;
.source "FlashlightControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraRetryCount:I

.field private mCameraSetupCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mFlashlightEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTorchAvailable:Z

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraRetryCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager$TorchCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraRetryCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraSetupCompleted:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->getCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p1, "available"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchModeChanged(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureHandler()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->DEBUG:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraSetupCompleted:Z

    .line 67
    iput v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraRetryCount:I

    .line 246
    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V

    .line 245
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 75
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraHandler:Landroid/os/Handler;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 239
    .local v0, "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 243
    .end local v0    # "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 209
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    .line 210
    return-void
.end method

.method private dispatchError()V
    .locals 2

    .prologue
    .line 205
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    .line 206
    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 6
    .param p1, "message"    # I
    .param p2, "argument"    # Z

    .prologue
    .line 213
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 214
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 215
    .local v0, "N":I
    const/4 v1, 0x0

    .line 216
    .local v1, "cleanup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 217
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 218
    .local v3, "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v3, :cond_3

    .line 219
    if-nez p1, :cond_1

    .line 220
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    .line 216
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 222
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 213
    .end local v0    # "N":I
    .end local v1    # "cleanup":Z
    .end local v2    # "i":I
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 223
    .restart local v0    # "N":I
    .restart local v1    # "cleanup":Z
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 224
    :try_start_1
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_1

    .line 227
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 230
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_4
    if-eqz v1, :cond_5

    .line 231
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v5

    .line 234
    return-void
.end method

.method private dispatchModeChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    .line 202
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 180
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 181
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 182
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    .line 184
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 187
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "ids":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    .line 189
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 190
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 191
    .local v1, "flashAvailable":Ljava/lang/Boolean;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 192
    .local v4, "lensFacing":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 193
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 194
    return-object v2

    .line 188
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "flashAvailable":Ljava/lang/Boolean;
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    return-object v9
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 170
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 289
    const-string/jumbo v0, "FlashlightController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    const-string/jumbo v0, "  mCameraId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v0, "  mFlashlightEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 295
    const-string/jumbo v0, "  mTorchAvailable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 297
    return-void
.end method

.method public hasFlashlight()Z
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraSetupCompleted:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 147
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 176
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public setFlashlight(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 117
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraSetupCompleted:Z

    if-nez v2, :cond_0

    .line 118
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    .line 123
    .local v1, "pendingError":Z
    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    if-eq v2, p1, :cond_2

    .line 126
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 136
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchModeChanged(Z)V

    .line 137
    if-eqz v1, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchError()V

    .line 140
    :cond_3
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_3
    const-string/jumbo v2, "FlashlightController"

    const-string/jumbo v3, "Couldn\'t set torch mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
