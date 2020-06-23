.class Lcom/android/systemui/settings/BrightnessController$6;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 242
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 245
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 247
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 268
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 273
    return-void

    .line 249
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    :goto_1
    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 270
    throw v0

    :cond_0
    move v0, v1

    .line 249
    goto :goto_1

    .line 252
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    goto :goto_0

    .line 256
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    :goto_2
    invoke-interface {v2, v0}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 259
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_0

    .line 262
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_0

    .line 265
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    :goto_3
    invoke-static {v2, v0}, Lcom/android/systemui/settings/BrightnessController;->-wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 247
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
