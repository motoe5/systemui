.class Lcom/android/systemui/usb/StorageNotification$5;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification;->listenForUserUnlocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    .line 768
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 772
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v6}, Lcom/android/systemui/usb/StorageNotification;->-get2(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v2

    .line 773
    .local v2, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "disk$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 774
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget v7, v0, Landroid/os/storage/DiskInfo;->volumeCount:I

    invoke-static {v6, v0, v7}, Lcom/android/systemui/usb/StorageNotification;->-wrap1(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V

    goto :goto_0

    .line 777
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v6}, Lcom/android/systemui/usb/StorageNotification;->-get2(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 778
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "vol$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 779
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-static {v6, v3}, Lcom/android/systemui/usb/StorageNotification;->-wrap4(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V

    goto :goto_1

    .line 781
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification$5;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v6, v6, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 782
    return-void
.end method
