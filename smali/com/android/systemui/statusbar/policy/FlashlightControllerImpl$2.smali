.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;
.super Ljava/lang/Object;
.source "FlashlightControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 82
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v3

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "cameraId":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "cameraId":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I

    const/16 v2, 0xa

    if-ge v4, v2, :cond_0

    .line 88
    const-string/jumbo v2, "FlashlightController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "re-trying for camera availability, count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v3

    .line 110
    return-void

    .line 92
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v2, "FlashlightController"

    const-string/jumbo v4, "Couldn\'t initialize."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v3

    .line 94
    return-void

    .line 95
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 96
    :try_start_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 105
    .restart local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    :try_start_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get8(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get6(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method
