.class Lcom/android/systemui/qs/tiles/WifiTile$2;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiTile;->showWarningDialogIfNeeded()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;

.field final synthetic val$warningDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/WifiTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->val$warningDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->val$warningDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 527
    const v1, 0x7f0a00be

    .line 526
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get3(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    .line 530
    const-string/jumbo v1, "mot_do_not_show_wifi_warning"

    .line 529
    invoke-static {v0, v1}, Lcom/android/settingslib/TetherAndWifiHelper;->setDoNotShowWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$2;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->-get3(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/TetherAndWifiHelper;->disableAllActiveHotspots(Landroid/content/Context;)V

    .line 535
    return-void
.end method
