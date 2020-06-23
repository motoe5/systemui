.class Lcom/android/systemui/statusbar/phone/AutoTileManager$6$1;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$6;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get7(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    return-void
.end method
