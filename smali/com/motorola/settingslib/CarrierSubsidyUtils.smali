.class public Lcom/motorola/settingslib/CarrierSubsidyUtils;
.super Ljava/lang/Object;
.source "CarrierSubsidyUtils.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/motorola/settingslib/CarrierSubsidyUtils;->DEBUG:Z

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCarrierSubsidyLocked(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    const/4 v1, 0x0

    .line 48
    .local v1, "lockStatus":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 49
    const-string/jumbo v5, "carrier_subsidy_lock_enabled"

    const/4 v6, 0x0

    .line 48
    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCarrierSubsidyLocked ,lockStatus is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->log(Ljava/lang/String;)V

    .line 53
    if-ne v1, v2, :cond_0

    :goto_1
    return v2

    :cond_0
    move v2, v3

    goto :goto_1

    .line 50
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isDataSelectionAllowed(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string/jumbo v10, "isDataSelectionAllowed "

    invoke-static {v10}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->log(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    .line 68
    .local v0, "dataSelectionAllowed":Z
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 69
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    .line 70
    .local v5, "slotOneCarrierSim":Z
    const/4 v1, 0x0

    .line 72
    .local v1, "nonCarrierSim":Z
    if-nez v9, :cond_0

    .line 73
    const-string/jumbo v10, "TelephonyManger is null"

    invoke-static {v10}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->log(Ljava/lang/String;)V

    .line 74
    return v0

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->isCarrierSubsidyLocked(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 79
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    .line 80
    .local v8, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v8, :cond_3

    .line 81
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "sir$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 82
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 83
    .local v7, "subId":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 84
    .local v6, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    .line 85
    invoke-virtual {v9, v7}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/OperatorEntryManager;

    move-result-object v10

    .line 88
    const/4 v11, 0x1

    .line 86
    invoke-virtual {v10, v2, v11}, Lcom/motorola/android/internal/telephony/OperatorEntryManager;->isOperatorPreferredSimWithRestriction(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 89
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    if-nez v10, :cond_1

    .line 90
    const/4 v5, 0x1

    .line 91
    const-string/jumbo v10, "slotOneCarrierSim set to true"

    invoke-static {v10}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x1

    .line 95
    const-string/jumbo v10, "noneCarrierSim set to true"

    invoke-static {v10}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "sir$iterator":Ljava/util/Iterator;
    .end local v6    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v7    # "subId":I
    :cond_3
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 101
    const/4 v0, 0x0

    .line 102
    const-string/jumbo v10, "dataSelectionAllowed set to false"

    invoke-static {v10}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->log(Ljava/lang/String;)V

    .line 105
    .end local v8    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isDataSelectionAllowed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/settingslib/CarrierSubsidyUtils;->log(Ljava/lang/String;)V

    .line 106
    return v0
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 139
    sget-boolean v0, Lcom/motorola/settingslib/CarrierSubsidyUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 140
    const-string/jumbo v0, "CarrierSubsidyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    return-void
.end method
