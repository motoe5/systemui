.class final Lcom/android/systemui/volume/VolumeDialogImpl$H;
.super Landroid/os/Handler;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogImpl;

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1128
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 1133
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1144
    :goto_0
    return-void

    .line 1134
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->showH(I)V

    goto :goto_0

    .line 1135
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V

    goto :goto_0

    .line 1136
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap4(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 1137
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap4(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 1138
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap5(Lcom/android/systemui/volume/VolumeDialogImpl;IZ)V

    goto :goto_0

    .line 1139
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    goto :goto_0

    .line 1140
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap3(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    goto :goto_0

    .line 1141
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap7(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    goto :goto_0

    .line 1142
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$H;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap9(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    goto :goto_0

    .line 1133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
