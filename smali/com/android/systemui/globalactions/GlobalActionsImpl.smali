.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 34
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 35
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 36
    return-void
.end method


# virtual methods
.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 4
    .param p1, "manager"    # Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v1, :cond_0

    .line 41
    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 42
    const v2, 0x1030237

    .line 41
    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 43
    .local v0, "context":Landroid/support/v7/view/ContextThemeWrapper;
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 45
    .end local v0    # "context":Landroid/support/v7/view/ContextThemeWrapper;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    .line 46
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v3

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZ)V

    .line 47
    return-void
.end method
