.class Lcom/android/systemui/qs/tiles/HotspotTile$3;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

.field final synthetic val$isEnabled:Z

.field final synthetic val$warningDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$warningDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$isEnabled:Z

    .line 174
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
    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$warningDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get0(Lcom/android/systemui/qs/tiles/HotspotTile;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mot_do_not_show_hs_warning"

    invoke-static {v0, v1}, Lcom/android/settingslib/TetherAndWifiHelper;->setDoNotShowWarning(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->-get1(Lcom/android/systemui/qs/tiles/HotspotTile;)Lcom/android/systemui/statusbar/policy/HotspotController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$3;->val$isEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 185
    return-void
.end method
