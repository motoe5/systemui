.class public Lcom/android/systemui/volume/VolumeDialogComponent;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogComponent$1;
    }
.end annotation


# instance fields
.field private final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field private mDialog:Lcom/android/systemui/plugins/VolumeDialog;

.field private final mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

.field private final mSysui:Lcom/android/systemui/SystemUI;

.field private final mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private mVolumePolicy:Landroid/media/VolumePolicy;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/volume/VolumeDialogComponent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->startSettings(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "sysui"    # Lcom/android/systemui/SystemUI;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 68
    const v1, -0x3ffffffc    # -2.000001f

    .line 67
    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 72
    new-instance v0, Landroid/media/VolumePolicy;

    .line 76
    const/16 v1, 0x190

    .line 72
    invoke-direct {v0, v4, v4, v4, v1}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 198
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    .line 81
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 82
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setUserActivityListener(Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;)V

    .line 85
    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    .line 86
    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 87
    const-class v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    .line 88
    const-class v1, Lcom/android/systemui/plugins/VolumeDialog;

    .line 87
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw$1;-><init>(Ljava/lang/Object;)V

    .line 87
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw;-><init>(Ljava/lang/Object;)V

    .line 87
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->applyConfiguration()V

    .line 98
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "sysui_volume_down_silent"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysui_volume_up_silent"

    aput-object v2, v1, v4

    .line 99
    const-string/jumbo v2, "sysui_do_not_disturb"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 98
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method private applyConfiguration()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->showDndTile(Z)V

    .line 164
    return-void
.end method

.method private createDefault()Lcom/android/systemui/plugins/VolumeDialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 107
    invoke-static {}, Lcom/motorola/multibluetooth/MultiBTAppHelper;->isMultiBTFeatureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/systemui/volume/MotoSoundVolumeDialog;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "impl":Lcom/android/systemui/volume/VolumeDialogImpl;
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportant(IZ)V

    .line 114
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportant(IZ)V

    .line 115
    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setAutomute(Z)V

    .line 116
    invoke-virtual {v0, v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->setSilentMode(Z)V

    .line 117
    return-object v0

    .line 110
    .end local v0    # "impl":Lcom/android/systemui/volume/VolumeDialogImpl;
    :cond_0
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;-><init>(Landroid/content/Context;)V

    .restart local v0    # "impl":Lcom/android/systemui/volume/VolumeDialogImpl;
    goto :goto_0
.end method

.method private setVolumePolicy(ZZZI)V
    .locals 2
    .param p1, "volumeDownToEnterSilent"    # Z
    .param p2, "volumeUpToExitSilent"    # Z
    .param p3, "doNotDisturbWhenSilent"    # Z
    .param p4, "vibrateToSilentDebounce"    # I

    .prologue
    .line 148
    new-instance v0, Landroid/media/VolumePolicy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 151
    return-void
.end method

.method private startSettings(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 194
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, v1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    .line 196
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_volume_VolumeDialogComponent-mthref-0()Lcom/android/systemui/plugins/VolumeDialog;
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->createDefault()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    return-object v0
.end method

.method public dismissNow()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->dismiss()V

    .line 176
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 181
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method synthetic lambda$-com_android_systemui_volume_VolumeDialogComponent_4032(Lcom/android/systemui/plugins/VolumeDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/systemui/plugins/VolumeDialog;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialog;->destroy()V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    const/16 v2, 0x7e4

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/VolumeDialog;->init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->reload()Ljava/lang/Object;

    .line 171
    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string/jumbo v3, "sysui_volume_down_silent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    if-eqz p2, :cond_2

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 127
    .local v1, "volumeDownToEnterSilent":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 128
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 126
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    .line 144
    .end local v1    # "volumeDownToEnterSilent":Z
    :cond_0
    :goto_1
    return-void

    .line 124
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "volumeDownToEnterSilent":Z
    goto :goto_0

    .line 125
    .end local v1    # "volumeDownToEnterSilent":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "volumeDownToEnterSilent":Z
    goto :goto_0

    .line 129
    .end local v1    # "volumeDownToEnterSilent":Z
    :cond_3
    const-string/jumbo v3, "sysui_volume_up_silent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 130
    if-eqz p2, :cond_5

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    .line 133
    .local v2, "volumeUpToExitSilent":Z
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 134
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    .line 135
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 133
    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    goto :goto_1

    .line 131
    .end local v2    # "volumeUpToExitSilent":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "volumeUpToExitSilent":Z
    goto :goto_2

    .line 132
    .end local v2    # "volumeUpToExitSilent":Z
    :cond_5
    const/4 v2, 0x1

    .restart local v2    # "volumeUpToExitSilent":Z
    goto :goto_2

    .line 136
    .end local v2    # "volumeUpToExitSilent":Z
    :cond_6
    const-string/jumbo v3, "sysui_do_not_disturb"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    if-eqz p2, :cond_8

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 140
    .local v0, "doNotDisturbWhenSilent":Z
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v3, v3, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    .line 141
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v4, v4, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    .line 142
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v5, v5, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    .line 140
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    goto :goto_1

    .line 138
    .end local v0    # "doNotDisturbWhenSilent":Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "doNotDisturbWhenSilent":Z
    goto :goto_3

    .line 139
    .end local v0    # "doNotDisturbWhenSilent":Z
    :cond_8
    const/4 v0, 0x1

    .restart local v0    # "doNotDisturbWhenSilent":Z
    goto :goto_3
.end method

.method public onUserActivity()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 156
    .local v0, "kvm":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 159
    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->register()V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setCombinedIcon(Landroid/content/Context;Z)V

    .line 187
    return-void
.end method
