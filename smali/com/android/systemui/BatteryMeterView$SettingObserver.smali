.class final Lcom/android/systemui/BatteryMeterView$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/BatteryMeterView;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterView;

    .line 321
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 322
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 326
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->-wrap0(Lcom/android/systemui/BatteryMeterView;)V

    .line 328
    return-void
.end method
