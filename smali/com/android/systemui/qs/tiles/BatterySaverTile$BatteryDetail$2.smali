.class Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$2;
.super Ljava/lang/Object;
.source "BatterySaverTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->postBindView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$2;->this$1:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$2;->this$1:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-wrap1(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    .line 175
    return-void
.end method
