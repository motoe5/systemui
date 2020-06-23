.class final Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VC"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".VC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    .line 531
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;
    .param p2, "-this1"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 564
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "dismiss requested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get3(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->sendEmptyMessage(I)Z

    .line 569
    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "displaySafeVolumeWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 537
    invoke-static {p1}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get3(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 540
    return-void
.end method

.method public masterMuteChanged(I)V
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 552
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "masterMuteChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_0
    return-void
.end method

.method public setA11yMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 573
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setA11yMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get3(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 575
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 584
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid accessibility mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get6(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 588
    return-void

    .line 578
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-set0(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)Z

    goto :goto_0

    .line 581
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-set0(Lcom/android/systemui/volume/VolumeDialogControllerImpl;Z)Z

    goto :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setLayoutDirection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get3(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 560
    return-void
.end method

.method public volumeChanged(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 544
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "volumeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    const-string/jumbo v2, " "

    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 545
    invoke-static {p2}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get3(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->-get8(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 548
    return-void
.end method
