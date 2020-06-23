.class Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$1;
.super Ljava/lang/Object;
.source "MotoSoundVolumeDialog.java"

# interfaces
.implements Lcom/motorola/multibluetooth/MultiBTAppHelper$MultiBTCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;


# direct methods
.method constructor <init>(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$1;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public MultiBTDeviceStateChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/multibluetooth/MultiBTDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/multibluetooth/MultiBTDevice;>;"
    invoke-static {}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MultiBTDeviceStateChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$1;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v0, p1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-set0(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;Ljava/util/List;)Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$1;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    iget-object v1, p0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog$1;->this$0:Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    invoke-static {v1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-get3(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;->-wrap2(Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;Z)V

    .line 66
    return-void
.end method

.method public MultiBTDeviceVolumeChanged(Lcom/motorola/multibluetooth/MultiBTDevice;I)V
    .locals 0
    .param p1, "device"    # Lcom/motorola/multibluetooth/MultiBTDevice;
    .param p2, "volume"    # I

    .prologue
    .line 70
    return-void
.end method
