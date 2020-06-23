.class Lcom/android/systemui/statusbar/phone/AutoTileManager$6;
.super Landroid/content/BroadcastReceiver;
.source "AutoTileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 211
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 215
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/motorola/settingslib/ModUtils;->isAProjectorMod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get4(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v1

    const-string/jumbo v2, "custom(com.motorola.projectormod/.app.ProjectorQSTile)"

    .line 217
    const v3, 0x7f0b0040

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 216
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;I)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get1(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "QsProjectorModAdded"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$6;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get3(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/AutoTileManager$6$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$6$1;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    :cond_0
    return-void
.end method
