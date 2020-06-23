.class Lcom/android/settingslib/TetherAndWifiHelper$2;
.super Ljava/lang/Object;
.source "TetherAndWifiHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/TetherAndWifiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/TetherAndWifiHelper;


# direct methods
.method constructor <init>(Lcom/android/settingslib/TetherAndWifiHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/TetherAndWifiHelper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settingslib/TetherAndWifiHelper$2;->this$0:Lcom/android/settingslib/TetherAndWifiHelper;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 87
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :goto_0
    return-void

    .line 81
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_0
    invoke-static {}, Lcom/android/settingslib/TetherAndWifiHelper;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "TetherAndWifiHelper"

    const-string/jumbo v1, "onServiceConnected bluetoothPan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/TetherAndWifiHelper$2;->this$0:Lcom/android/settingslib/TetherAndWifiHelper;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v0, p2}, Lcom/android/settingslib/TetherAndWifiHelper;->-set0(Lcom/android/settingslib/TetherAndWifiHelper;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 90
    return-void
.end method
