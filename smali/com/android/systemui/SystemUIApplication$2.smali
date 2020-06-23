.class Lcom/android/systemui/SystemUIApplication$2;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/OverlayPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/plugins/OverlayPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/SystemUIApplication;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$2;->this$0:Lcom/android/systemui/SystemUIApplication;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_SystemUIApplication$2_9394(ZLcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0
    .param p0, "b"    # Z
    .param p1, "o"    # Lcom/android/systemui/plugins/OverlayPlugin;

    .prologue
    .line 231
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/OverlayPlugin;->setCollapseDesired(Z)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_SystemUIApplication$2_9335(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs$1;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
    .locals 4
    .param p1, "plugin"    # Lcom/android/systemui/plugins/OverlayPlugin;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->this$0:Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 222
    .local v0, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v1

    .line 224
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v3

    .line 223
    invoke-interface {p1, v1, v3}, Lcom/android/systemui/plugins/OverlayPlugin;->setup(Landroid/view/View;Landroid/view/View;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    .line 228
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 230
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    new-instance v3, Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs;

    invoke-direct {v3, p0}, Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowManager$OtherwisedCollapsedListener;)V

    .line 232
    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 233
    iget-object v3, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 232
    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForcePluginOpen(Z)V

    .line 236
    :cond_3
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SystemUIApplication$2;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lcom/android/systemui/plugins/OverlayPlugin;

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 241
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 242
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication$2;->mOverlays:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 241
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForcePluginOpen(Z)V

    .line 243
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .prologue
    .line 238
    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIApplication$2;->onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method
