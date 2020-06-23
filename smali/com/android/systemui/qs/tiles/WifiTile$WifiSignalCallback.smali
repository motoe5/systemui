.class public final Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "WifiSignalCallback"
.end annotation


# instance fields
.field final mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    .line 331
    return-void
.end method


# virtual methods
.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLcom/android/systemui/moto/ExtendedWifiInfo;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "statusIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p3, "qsIcon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "isTransient"    # Z
    .param p8, "wifiInfo"    # Lcom/android/systemui/moto/ExtendedWifiInfo;

    .prologue
    .line 349
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiSignalChanged enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    .line 351
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget v1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    .line 353
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-object p6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    .line 355
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-object v1, p3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iput-boolean p7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->isTransient:Z

    .line 358
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-wrap0(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get4(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->-wrap0(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    .line 364
    :cond_1
    if-eqz p8, :cond_2

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-object v1, p8, Lcom/android/systemui/moto/ExtendedWifiInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityIconId:I

    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    iget-object v1, p8, Lcom/android/systemui/moto/ExtendedWifiInfo;->qsActivityIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityDescription:Ljava/lang/String;

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiSignalCallback;->mInfo:Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->-wrap2(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    .line 370
    return-void
.end method
