.class public Lcom/android/systemui/tuner/BatteryPreference;
.super Landroid/support/v7/preference/DropDownPreference;
.source "BatteryPreference.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mBattery:Ljava/lang/String;

.field private mBatteryEnabled:Z

.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPercentage:Z

.field private mHasSetValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const v0, 0x1040606

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "percent"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "disabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onAttached()V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/tuner/BatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    const-string/jumbo v3, "status_bar_show_battery_percent"

    .line 51
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasPercentage:Z

    .line 53
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "icon_blacklist"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 51
    goto :goto_0
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 59
    invoke-super {p0}, Landroid/support/v7/preference/DropDownPreference;->onDetached()V

    .line 60
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasSetValue:Z

    if-nez v0, :cond_1

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasSetValue:Z

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasPercentage:Z

    if-eqz v0, :cond_2

    .line 74
    const-string/jumbo v0, "percent"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setValue(Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    if-eqz v0, :cond_3

    .line 76
    const-string/jumbo v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/BatteryPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 85
    const-string/jumbo v1, "percent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    .local v0, "v":Z
    invoke-virtual {p0}, Lcom/android/systemui/tuner/BatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xed

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/tuner/BatteryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "status_bar_show_battery_percent"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    const-string/jumbo v1, "disabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_1
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v3, "icon_blacklist"

    .line 94
    const-string/jumbo v4, ","

    iget-object v5, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v1, v3, v4}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return v2

    .line 87
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
