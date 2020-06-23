.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$1;,
        Lcom/android/systemui/usb/StorageNotification$2;,
        Lcom/android/systemui/usb/StorageNotification$3;,
        Lcom/android/systemui/usb/StorageNotification$4;,
        Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    }
.end annotation


# instance fields
.field private final mFinishReceiver:Landroid/content/BroadcastReceiver;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private final mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private final mMoves:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/usb/StorageNotification$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onDiskDestroyedInternal(Landroid/os/storage/DiskInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/usb/StorageNotification;->onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoves:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mListener:Landroid/os/storage/StorageEventListener;

    .line 108
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$4;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    .line 52
    return-void
.end method

.method private buildBrowsePendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 655
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->buildBrowseIntent()Landroid/content/Intent;

    move-result-object v2

    .line 656
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v0, 0x80000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 658
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 659
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 660
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 659
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 700
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 701
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    .line 702
    const-string/jumbo v3, "com.android.settings.Settings$PrivateVolumeForgetActivity"

    .line 701
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    const-string/jumbo v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 706
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 707
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 706
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildInitPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 602
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 603
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    const-string/jumbo v0, "com.android.tv.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string/jumbo v0, "com.android.tv.settings.action.NEW_STORAGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    :goto_0
    const-string/jumbo v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 613
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 614
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 613
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 607
    .end local v1    # "requestKey":I
    :cond_0
    const-string/jumbo v0, "com.android.settings"

    .line 608
    const-string/jumbo v3, "com.android.settings.deviceinfo.StorageWizardInit"

    .line 607
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private buildInitPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 618
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 619
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    const-string/jumbo v0, "com.android.tv.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string/jumbo v0, "com.android.tv.settings.action.NEW_STORAGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    :goto_0
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 629
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 630
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 629
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 623
    .end local v1    # "requestKey":I
    :cond_0
    const-string/jumbo v0, "com.android.settings"

    .line 624
    const-string/jumbo v3, "com.android.settings.deviceinfo.StorageWizardInit"

    .line 623
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x1

    .line 588
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/usb/StorageNotification;->getSmallIcon(Landroid/os/storage/DiskInfo;I)I

    move-result v2

    .line 588
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v3, 0x1060149

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 588
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 593
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    .line 588
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 596
    new-instance v2, Landroid/app/Notification$TvExtender;

    invoke-direct {v2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 588
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 597
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/usb/StorageNotification;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 598
    return-object v0
.end method

.method private buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 690
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 694
    .local v1, "requestKey":I
    iget-object v2, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 695
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v4, 0x10000000

    .line 694
    invoke-static {v2, v1, v0, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/high16 v3, 0x10000000

    .line 634
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 635
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    const-string/jumbo v0, "com.android.tv.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    const-string/jumbo v0, "com.android.tv.settings.action.UNMOUNT_STORAGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 641
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 642
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    .line 641
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 644
    .end local v1    # "requestKey":I
    :cond_0
    const-string/jumbo v0, "com.android.settings"

    .line 645
    const-string/jumbo v4, "com.android.settings.deviceinfo.StorageUnmountReceiver"

    .line 644
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 649
    .restart local v1    # "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 650
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 649
    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v4, 0x0

    .line 664
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 665
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const-string/jumbo v0, "com.android.tv.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    const-string/jumbo v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    :goto_0
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 685
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 686
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    .line 685
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 669
    .end local v1    # "requestKey":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 679
    return-object v4

    .line 671
    :pswitch_0
    const-string/jumbo v0, "com.android.settings"

    .line 672
    const-string/jumbo v3, "com.android.settings.Settings$PrivateVolumeSettingsActivity"

    .line 671
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 675
    :pswitch_1
    const-string/jumbo v0, "com.android.settings"

    .line 676
    const-string/jumbo v3, "com.android.settings.Settings$PublicVolumeSettingsActivity"

    .line 675
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .prologue
    const/4 v4, 0x0

    .line 711
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 712
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    const-string/jumbo v0, "com.android.tv.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string/jumbo v0, "com.android.tv.settings.action.MIGRATE_STORAGE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    :goto_0
    const-string/jumbo v0, "android.content.pm.extra.MOVE_ID"

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 722
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v6, :cond_0

    .line 723
    const-string/jumbo v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 726
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    .line 725
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 716
    .end local v6    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const-string/jumbo v0, "com.android.settings"

    .line 717
    const-string/jumbo v1, "com.android.settings.deviceinfo.StorageWizardMigrateProgress"

    .line 716
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .prologue
    .line 730
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 731
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const-string/jumbo v0, "com.android.tv.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string/jumbo v0, "com.android.tv.settings.action.MOVE_APP"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    :goto_0
    const-string/jumbo v0, "android.content.pm.extra.MOVE_ID"

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    .line 741
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 740
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 735
    :cond_0
    const-string/jumbo v0, "com.android.settings"

    .line 736
    const-string/jumbo v1, "com.android.settings.deviceinfo.StorageWizardMoveProgress"

    .line 735
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 745
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 746
    .local v2, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    const-string/jumbo v0, "com.android.tv.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string/jumbo v0, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    :goto_0
    const-string/jumbo v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 756
    .local v1, "requestKey":I
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 757
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    .line 756
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 750
    .end local v1    # "requestKey":I
    :cond_0
    const-string/jumbo v0, "com.android.settings"

    .line 751
    const-string/jumbo v3, "com.android.settings.deviceinfo.StorageWizardReady"

    .line 750
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getSmallIcon(Landroid/os/storage/DiskInfo;I)I
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "state"    # I

    .prologue
    const v1, 0x1080450

    .line 570
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    sparse-switch p2, :sswitch_data_0

    .line 576
    return v1

    .line 574
    :sswitch_0
    return v1

    .line 578
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    const v0, 0x1080470

    return v0

    .line 581
    :cond_1
    return v1

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private isTv()Z
    .locals 2

    .prologue
    .line 761
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 762
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private listenForUserUnlocked()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 767
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 768
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/StorageNotification$5;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    .line 783
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 768
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 784
    return-void
.end method

.method private onDiskDestroyedInternal(Landroid/os/storage/DiskInfo;)V
    .locals 4
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 274
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 273
    const v3, 0x5344534b

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 275
    return-void
.end method

.method private onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V
    .locals 11
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    const v10, 0x5344534b

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 236
    if-nez p2, :cond_0

    iget-wide v4, p1, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    .line 239
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x104020b

    .line 238
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v8, [Ljava/lang/Object;

    .line 241
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x104020a

    .line 240
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    const/4 v4, 0x6

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/usb/StorageNotification;->getSmallIcon(Landroid/os/storage/DiskInfo;I)I

    move-result v4

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 246
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v5, 0x1060149

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 249
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildInitPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 250
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 253
    const-string/jumbo v4, "err"

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 254
    new-instance v4, Landroid/app/Notification$TvExtender;

    invoke-direct {v4}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 244
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 255
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 257
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 257
    invoke-virtual {v3, v4, v10, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 265
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 263
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 262
    invoke-virtual {v3, v4, v10, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .locals 11
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I

    .prologue
    const v10, 0x534d4f56

    const/4 v9, 0x1

    .line 520
    iget-object v6, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 523
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 524
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 523
    invoke-virtual {v6, v7, v10, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 525
    return-void

    .line 528
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 529
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "descrip":Ljava/lang/String;
    const/16 v6, -0x64

    if-ne p2, v6, :cond_1

    .line 534
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v7, 0x10401f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const v8, 0x10401f3

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 544
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/usb/StorageNotification;->buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 552
    :goto_1
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    const v7, 0x1080450

    .line 552
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 554
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v8, 0x1060149

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    .line 552
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 558
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    .line 552
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 561
    const-string/jumbo v7, "sys"

    .line 552
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 563
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 565
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 566
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 565
    invoke-virtual {v6, v7, v10, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 567
    return-void

    .line 537
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v7, 0x10401f1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 538
    .restart local v5    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v7, 0x10401f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 545
    :cond_2
    if-eqz v3, :cond_3

    .line 546
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/StorageNotification;->buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, "intent":Landroid/app/PendingIntent;
    goto :goto_1

    .line 548
    .end local v2    # "intent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v2, 0x0

    .local v2, "intent":Landroid/app/PendingIntent;
    goto :goto_1
.end method

.method private onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .locals 9
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 480
    iget-object v4, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 481
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    aput-object v6, v5, v8

    const v6, 0x10401f2

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, "title":Ljava/lang/CharSequence;
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_1

    .line 488
    const/4 v2, 0x0

    .line 494
    :goto_1
    iget-object v4, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 495
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 501
    .local v1, "intent":Landroid/app/PendingIntent;
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    const v5, 0x1080450

    .line 501
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 503
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v6, 0x1060149

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 501
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 507
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 501
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 510
    const-string/jumbo v5, "progress"

    .line 501
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 511
    const/16 v5, 0x64

    .line 501
    invoke-virtual {v4, v5, p2, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 513
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 515
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    .line 516
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 515
    const v8, 0x534d4f56

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 517
    return-void

    .line 483
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "intent":Landroid/app/PendingIntent;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v5, 0x10401f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 490
    :cond_1
    invoke-static {p3, p4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 497
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .restart local v1    # "intent":Landroid/app/PendingIntent;
    goto :goto_2
.end method

.method private onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 289
    const-string/jumbo v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Notifying about private volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    .line 292
    return-void
.end method

.method private onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .locals 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const v4, 0x53505542

    .line 295
    const-string/jumbo v1, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notifying about public volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 325
    const/4 v0, 0x0

    .line 329
    :goto_0
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 331
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 330
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 336
    :goto_1
    return-void

    .line 300
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .local v0, "notif":Landroid/app/Notification;
    goto :goto_0

    .line 303
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 307
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 310
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 313
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 316
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 319
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 322
    .end local v0    # "notif":Landroid/app/Notification;
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "notif":Landroid/app/Notification;
    goto :goto_0

    .line 333
    .end local v0    # "notif":Landroid/app/Notification;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 334
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 333
    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 462
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    const/4 v3, 0x0

    return-object v3

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 468
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    .line 469
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x10401e9

    .line 468
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    .line 471
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x10401e8

    .line 470
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 474
    const-string/jumbo v4, "err"

    .line 473
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 344
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 345
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    .line 346
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x10401ec

    .line 345
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    .line 348
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x10401eb

    .line 347
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 351
    const-string/jumbo v4, "progress"

    .line 350
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 419
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 420
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    .line 421
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x1040209

    .line 420
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    .line 423
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x1040208

    .line 422
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 426
    const-string/jumbo v4, "progress"

    .line 425
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 415
    const/4 v0, 0x0

    return-object v0
.end method

.method private onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 14
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const v13, 0x1080360

    const v12, 0x1040205

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 357
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 358
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    .line 361
    .local v2, "disk":Landroid/os/storage/DiskInfo;
    if-nez v4, :cond_0

    .line 362
    const-string/jumbo v7, "StorageNotification"

    const-string/jumbo v8, "rec == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-object v9

    .line 368
    :cond_0
    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 369
    const-string/jumbo v7, "StorageNotification"

    const-string/jumbo v8, "rec.isSnoozed() == true & disk.isSd() == true."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-object v9

    .line 373
    :cond_1
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->isInited()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 374
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    .line 376
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const v9, 0x10401f6

    .line 375
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildInitPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 379
    .local v3, "initIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p1, v6, v5}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 380
    new-instance v8, Landroid/app/Notification$Action;

    .line 381
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v10, 0x10401ed

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 380
    const v10, 0x1080456

    invoke-direct {v8, v10, v9, v3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 379
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 382
    new-instance v8, Landroid/app/Notification$Action;

    .line 383
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 384
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 382
    invoke-direct {v8, v13, v9, v10}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 379
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 386
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/usb/StorageNotification;->buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 379
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    return-object v7

    .line 390
    .end local v3    # "initIntent":Landroid/app/PendingIntent;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 391
    .restart local v6    # "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    .line 392
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const v9, 0x10401f9

    .line 391
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 394
    .restart local v5    # "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildBrowsePendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 395
    .local v0, "browseIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p1, v6, v5}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 396
    new-instance v8, Landroid/app/Notification$Action;

    .line 397
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v10, 0x10401ea

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 396
    const v10, 0x108036f

    invoke-direct {v8, v10, v9, v0}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 395
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 399
    new-instance v8, Landroid/app/Notification$Action;

    .line 400
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 401
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 399
    invoke-direct {v8, v13, v9, v10}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 395
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 403
    const-string/jumbo v8, "sys"

    .line 395
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 405
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 406
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/usb/StorageNotification;->buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 409
    :cond_3
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    return-object v7
.end method

.method private onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 445
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v3

    if-nez v3, :cond_0

    .line 447
    const/4 v3, 0x0

    return-object v3

    .line 450
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 451
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    .line 452
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x10401f8

    .line 451
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    .line 454
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x10401f7

    .line 453
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 457
    const-string/jumbo v4, "err"

    .line 456
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 280
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_0

    .line 283
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 432
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 433
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    .line 434
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x1040207

    .line 433
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v4, v7, [Ljava/lang/Object;

    .line 436
    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x1040206

    .line 435
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, Lcom/android/systemui/usb/StorageNotification;->buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 439
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->buildInitPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 438
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 440
    const-string/jumbo v4, "err"

    .line 438
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .locals 1
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateMissingPrivateVolumes()V
    .locals 14

    .prologue
    const v13, 0x53505256

    const/4 v12, 0x1

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->isTv()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v5

    .line 194
    .local v5, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "rec$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    .line 195
    .local v3, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 197
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "fsUuid":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 199
    .local v2, "info":Landroid/os/storage/VolumeInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 201
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 202
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 201
    invoke-virtual {v8, v1, v13, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 206
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    new-array v9, v12, [Ljava/lang/Object;

    .line 207
    invoke-virtual {v3}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 206
    const v10, 0x10401ef

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "title":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v9, 0x10401ee

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "text":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    const v9, 0x1080450

    .line 211
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 213
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 214
    const v10, 0x1060149

    .line 213
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 211
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 217
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/StorageNotification;->buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 211
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 218
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    .line 211
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 221
    const-string/jumbo v9, "sys"

    .line 211
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 222
    invoke-direct {p0, v1}, Lcom/android/systemui/usb/StorageNotification;->buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 211
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 223
    new-instance v9, Landroid/app/Notification$TvExtender;

    invoke-direct {v9}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 211
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 224
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 227
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iget v9, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 229
    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 230
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 229
    invoke-virtual {v8, v1, v13, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 233
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    .end local v1    # "fsUuid":Ljava/lang/String;
    .end local v2    # "info":Landroid/os/storage/VolumeInfo;
    .end local v3    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "text":Ljava/lang/CharSequence;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_5
    return-void
.end method


# virtual methods
.method public start()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 159
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 161
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    iput-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 162
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 164
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 164
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mFinishReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    .line 166
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v2

    .line 171
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

    .line 172
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget v6, v0, Landroid/os/storage/DiskInfo;->volumeCount:I

    invoke-direct {p0, v0, v6}, Lcom/android/systemui/usb/StorageNotification;->onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    goto :goto_0

    .line 175
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 176
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

    .line 177
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v3}, Lcom/android/systemui/usb/StorageNotification;->onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_1

    .line 180
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->updateMissingPrivateVolumes()V

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->listenForUserUnlocked()V

    .line 185
    return-void
.end method
