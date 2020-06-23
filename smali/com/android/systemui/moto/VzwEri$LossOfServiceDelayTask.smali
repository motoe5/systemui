.class Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;
.super Ljava/lang/Object;
.source "VzwEri.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/VzwEri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LossOfServiceDelayTask"
.end annotation


# instance fields
.field started:Z

.field final synthetic this$0:Lcom/android/systemui/moto/VzwEri;


# direct methods
.method private constructor <init>(Lcom/android/systemui/moto/VzwEri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/VzwEri;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/moto/VzwEri;Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/moto/VzwEri;
    .param p2, "-this1"    # Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;-><init>(Lcom/android/systemui/moto/VzwEri;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v1}, Lcom/android/systemui/moto/VzwEri;->-get2(Lcom/android/systemui/moto/VzwEri;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/systemui/moto/VzwEri;->-set1(Lcom/android/systemui/moto/VzwEri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v1, v3}, Lcom/android/systemui/moto/VzwEri;->-set0(Lcom/android/systemui/moto/VzwEri;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 338
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v1}, Lcom/android/systemui/moto/VzwEri;->-get3(Lcom/android/systemui/moto/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask$1;-><init>(Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 345
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v1}, Lcom/android/systemui/moto/VzwEri;->-get3(Lcom/android/systemui/moto/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v3}, Lcom/android/systemui/moto/VzwEri;->-get1(Lcom/android/systemui/moto/VzwEri;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/system/media/audio/eri/LossofService.ogg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 347
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v1}, Lcom/android/systemui/moto/VzwEri;->-get3(Lcom/android/systemui/moto/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 348
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v1}, Lcom/android/systemui/moto/VzwEri;->-get3(Lcom/android/systemui/moto/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 349
    invoke-static {}, Lcom/android/systemui/moto/VzwEri;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "VzwEri"

    const-string/jumbo v3, "LossOfService timeout, start alert"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->this$0:Lcom/android/systemui/moto/VzwEri;

    invoke-static {v1}, Lcom/android/systemui/moto/VzwEri;->-get3(Lcom/android/systemui/moto/VzwEri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/systemui/moto/VzwEri$LossOfServiceDelayTask;->started:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 356
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v1, "VzwEri"

    const-string/jumbo v3, "Exception while attempting to play loss of service alert"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 332
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
