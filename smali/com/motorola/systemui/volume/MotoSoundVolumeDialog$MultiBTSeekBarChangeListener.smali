.class final Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;
.super Ljava/lang/Object;
.source "MotoSoundVolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiBTSeekBarChangeListener"
.end annotation


# instance fields
.field mDevice:Lcom/motorola/multibluetooth/MultiBTDevice;

.field final synthetic this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;


# direct methods
.method constructor <init>(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;Lcom/motorola/multibluetooth/MultiBTDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;
    .param p2, "device"    # Lcom/motorola/multibluetooth/MultiBTDevice;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->mDevice:Lcom/motorola/multibluetooth/MultiBTDevice;

    .line 286
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->mDevice:Lcom/motorola/multibluetooth/MultiBTDevice;

    invoke-virtual {v0, p2}, Lcom/motorola/multibluetooth/MultiBTDevice;->setVolume(I)V

    .line 291
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-wrap1(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V

    .line 292
    if-nez p3, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 294
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 295
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-wrap0(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V

    .line 296
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-wrap1(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V

    .line 301
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 302
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 303
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-wrap0(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V

    .line 304
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-wrap1(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V

    .line 309
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 310
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 311
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$MultiBTSeekBarChangeListener;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-wrap0(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V

    .line 312
    return-void
.end method
