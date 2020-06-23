.class public Lcom/android/systemui/moto/NetworkConfig;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# instance fields
.field public differingIconForSimError:Z

.field public enable1xOverrideDuringCdmaVoiceCall:Z

.field public enableATTrejectCode:Z

.field public enableActivityIconOnSB:Z

.field public enableCustomActivityIconOnQS:Z

.field public enableCustomizations:Z

.field public enableEriSounds:Z

.field public enableFemtocellIndicator:Z

.field public enableWide:Z

.field public gprsAttachIconDisplayable:Z

.field public hideLtePlus:Z

.field public hspaDataDistinguishable:Z

.field public hspapDataDistinguishable:Z

.field public isCellBroadcastSupported:Z

.field public mConfigEnableEriSounds:Z

.field public mConfigEnableFemtocellIndicator:Z

.field public mConfigShowCarrierAggregationIfFasterThan20Mhz:Z

.field public networkNameDefault:Ljava/lang/String;

.field public networkNameSeparator:Ljava/lang/String;

.field public networkNameShortFormSupported:Z

.field public networkNameSpnHasPriority:Z

.field public operatorName:Ljava/lang/String;

.field public roamingIndicationDisabled:Z

.field public show4gForLte:Z

.field public showAtLeast3G:Z

.field public showBothWifiAndMobileNetwork:Z

.field public showDataDisabledIcon:Z

.field public showEPDGIndicator:Z

.field public showNoIconDuringCdmaVoiceCall:Z

.field public showSeparatedSignalBars:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableWide:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->hspapDataDistinguishable:Z

    .line 24
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->gprsAttachIconDisplayable:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->differingIconForSimError:Z

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/moto/NetworkConfig;->operatorName:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showDataDisabledIcon:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->roamingIndicationDisabled:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableEriSounds:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableFemtocellIndicator:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showSeparatedSignalBars:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showBothWifiAndMobileNetwork:Z

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameDefault:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameSeparator:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameShortFormSupported:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameSpnHasPriority:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->isCellBroadcastSupported:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->mConfigShowCarrierAggregationIfFasterThan20Mhz:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->mConfigEnableEriSounds:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->mConfigEnableFemtocellIndicator:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableActivityIconOnSB:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomActivityIconOnQS:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enable1xOverrideDuringCdmaVoiceCall:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showNoIconDuringCdmaVoiceCall:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableATTrejectCode:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showEPDGIndicator:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showAtLeast3G:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->show4gForLte:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->hideLtePlus:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->hspaDataDistinguishable:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->hspapDataDistinguishable:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->gprsAttachIconDisplayable:Z

    .line 80
    const-string/jumbo v0, "@0"

    iput-object v0, p0, Lcom/android/systemui/moto/NetworkConfig;->operatorName:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showSeparatedSignalBars:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showBothWifiAndMobileNetwork:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->roamingIndicationDisabled:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableEriSounds:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableFemtocellIndicator:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->networkNameSpnHasPriority:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enableWide:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->isCellBroadcastSupported:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->mConfigShowCarrierAggregationIfFasterThan20Mhz:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->enable1xOverrideDuringCdmaVoiceCall:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/systemui/moto/NetworkConfig;->showNoIconDuringCdmaVoiceCall:Z

    .line 98
    return-void
.end method

.method public static readConfig(Landroid/content/Context;ZZZZ)Lcom/android/systemui/moto/NetworkConfig;
    .locals 5
    .param p0, "currentContext"    # Landroid/content/Context;
    .param p1, "showAtLeast3G"    # Z
    .param p2, "show4gForLte"    # Z
    .param p3, "hspaDataDistinguishable"    # Z
    .param p4, "hideLtePlus"    # Z

    .prologue
    const v4, 0x7f05001c

    const v3, 0x7f050008

    .line 102
    new-instance v0, Lcom/android/systemui/moto/NetworkConfig;

    invoke-direct {v0}, Lcom/android/systemui/moto/NetworkConfig;-><init>()V

    .line 103
    .local v0, "config":Lcom/android/systemui/moto/NetworkConfig;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, "res":Landroid/content/res/Resources;
    iput-boolean p1, v0, Lcom/android/systemui/moto/NetworkConfig;->showAtLeast3G:Z

    .line 105
    iput-boolean p2, v0, Lcom/android/systemui/moto/NetworkConfig;->show4gForLte:Z

    .line 106
    iput-boolean p3, v0, Lcom/android/systemui/moto/NetworkConfig;->hspaDataDistinguishable:Z

    .line 107
    iput-boolean p4, v0, Lcom/android/systemui/moto/NetworkConfig;->hideLtePlus:Z

    .line 109
    const v2, 0x7f11048e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/moto/NetworkConfig;->networkNameSeparator:Ljava/lang/String;

    .line 114
    const v2, 0x1040306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/moto/NetworkConfig;->networkNameDefault:Ljava/lang/String;

    .line 115
    const v2, 0x112008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->networkNameShortFormSupported:Z

    .line 117
    const v2, 0x7f05001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    .line 118
    iget-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    if-eqz v2, :cond_0

    .line 119
    const v2, 0x7f05001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableWide:Z

    .line 120
    const v2, 0x7f050027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->hspapDataDistinguishable:Z

    .line 122
    const v2, 0x7f050023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->gprsAttachIconDisplayable:Z

    .line 123
    const v2, 0x7f110186

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/moto/NetworkConfig;->operatorName:Ljava/lang/String;

    .line 124
    const v2, 0x7f05004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->showSeparatedSignalBars:Z

    .line 126
    const v2, 0x7f05003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->showBothWifiAndMobileNetwork:Z

    .line 128
    const v2, 0x7f050031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->roamingIndicationDisabled:Z

    .line 133
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableEriSounds:Z

    .line 134
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableFemtocellIndicator:Z

    .line 137
    const v2, 0x7f050050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->networkNameSpnHasPriority:Z

    .line 139
    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->differingIconForSimError:Z

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->isCellBroadcastSupported:Z

    .line 148
    const v2, 0x7f05003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->mConfigShowCarrierAggregationIfFasterThan20Mhz:Z

    .line 150
    const v2, 0x7f050066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->showDataDisabledIcon:Z

    .line 152
    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableActivityIconOnSB:Z

    .line 156
    const v2, 0x7f050019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomActivityIconOnQS:Z

    .line 160
    const v2, 0x7f050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 159
    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enable1xOverrideDuringCdmaVoiceCall:Z

    .line 164
    const v2, 0x7f050047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->showNoIconDuringCdmaVoiceCall:Z

    .line 169
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 168
    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->mConfigEnableEriSounds:Z

    .line 171
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 170
    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->mConfigEnableFemtocellIndicator:Z

    .line 175
    const v2, 0x7f050044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->enableATTrejectCode:Z

    .line 178
    const v2, 0x7f050040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/moto/NetworkConfig;->showEPDGIndicator:Z

    .line 180
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Carrier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/moto/NetworkConfig;->operatorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "customized:"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    iget-boolean v2, p0, Lcom/android/systemui/moto/NetworkConfig;->enableCustomizations:Z

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, ","

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    const-string/jumbo v2, "separated bar:"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    iget-boolean v2, p0, Lcom/android/systemui/moto/NetworkConfig;->showSeparatedSignalBars:Z

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    const-string/jumbo v2, ","

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string/jumbo v2, "showAtLeast3G:"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    iget-boolean v2, p0, Lcom/android/systemui/moto/NetworkConfig;->showAtLeast3G:Z

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string/jumbo v2, ","

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    const-string/jumbo v2, "show4gForLte:"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    iget-boolean v2, p0, Lcom/android/systemui/moto/NetworkConfig;->show4gForLte:Z

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    const-string/jumbo v2, ","

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    const-string/jumbo v2, "hideLtePlus:"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    iget-boolean v2, p0, Lcom/android/systemui/moto/NetworkConfig;->hideLtePlus:Z

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
