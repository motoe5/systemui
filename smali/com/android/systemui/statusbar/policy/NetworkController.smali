.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/NetworkController$IconState;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
        ">;",
        "Lcom/android/systemui/DemoMode;"
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public abstract addCarrierLabel(Lcom/android/systemui/moto/NetworkStateTracker$PanelCarrierLabelListener;)V
.end method

.method public abstract addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract addLabelShortFormView(Lcom/android/systemui/moto/NetworkStateTracker$ShortFormLabelListener;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end method

.method public abstract getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
.end method

.method public abstract getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
.end method

.method public abstract getMobileSignalControllers()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetworkSeparator()Ljava/lang/String;
.end method

.method public abstract getSimStates()Lcom/android/systemui/moto/SimStates;
.end method

.method public abstract hasEmergencyCryptKeeperText()Z
.end method

.method public abstract hasInternetConnection()Z
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract hasVoiceCallingFeature()Z
.end method

.method public abstract isCustomizeEnabled()Z
.end method

.method public abstract isEmergencyOnly()Z
.end method

.method public abstract isRadioOn()Z
.end method

.method public abstract isRtl()Z
.end method

.method public abstract isShortFormLabelEnabled()Z
.end method

.method public abstract isWiFiConnected()Z
.end method

.method public abstract playEriSoundAfterBoot()V
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public abstract removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method
