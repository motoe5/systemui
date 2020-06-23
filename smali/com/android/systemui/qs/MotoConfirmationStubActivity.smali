.class public Lcom/android/systemui/qs/MotoConfirmationStubActivity;
.super Landroid/app/Activity;
.source "MotoConfirmationStubActivity.java"


# static fields
.field private static final myMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->createMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->myMap:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static createMap()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v1, "myMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "com.motorola.vzw.phone.extensions.dataenabled.DATAENABLED_UNCHECKED"

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.motorola.vzw.phone.extensions"

    aput-object v4, v3, v6

    .line 57
    const-string/jumbo v4, "com.motorola.vzw.phone.extensions.dataenabled.DataEnabled"

    aput-object v4, v3, v7

    .line 56
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 58
    .local v2, "vzwValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "vzw"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "com.motorola.att.phone.extensions.dataenabled.DATAENABLED_UNCHECKED"

    aput-object v4, v3, v5

    const-string/jumbo v4, "com.motorola.att.phone.extensions"

    aput-object v4, v3, v6

    .line 60
    const-string/jumbo v4, "com.motorola.att.phone.extensions.dataenabled.DataEnabled"

    aput-object v4, v3, v7

    .line 59
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "attValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "att"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v1
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 129
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x1

    return v2

    .line 133
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 135
    :cond_0
    return v4
.end method

.method private setDataEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 115
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 116
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 117
    .local v0, "subId":I
    new-instance v2, Lcom/motorola/android/content/MSimContext;

    invoke-direct {v2, p0}, Lcom/motorola/android/content/MSimContext;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/motorola/android/content/MSimContext;->getResources(I)Landroid/content/res/Resources;

    move-result-object v2

    .line 118
    const v3, 0x1120158

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1, v0, p1}, Landroid/telephony/TelephonyManager;->setHomeDataEnabled(IZ)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {v1, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 71
    .local v3, "i":Landroid/content/Intent;
    if-nez v3, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    return-void

    .line 75
    :cond_1
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 77
    const-string/jumbo v6, "com.motorola.vzw.phone.extensions.dataenabled.DATAENABLED_UNCHECKED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 78
    const-string/jumbo v6, "carrier"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "carrier":Ljava/lang/String;
    sget-object v6, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->myMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 80
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 81
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->setDataEnabled(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->finish()V

    .line 83
    return-void

    .line 80
    :cond_3
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->isSystemApp(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_2

    .line 85
    new-instance v4, Landroid/content/Intent;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "intent":Landroid/content/Intent;
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v6, "launched_from_qs"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1    # "carrier":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->finish()V

    .line 111
    return-void

    .line 91
    .restart local v1    # "carrier":Ljava/lang/String;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->setDataEnabled(Z)V

    goto :goto_0

    .line 94
    .end local v1    # "carrier":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v6, "com.motorola.vzw.phone.extensions.AIRPLANE_MODE_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 95
    const-string/jumbo v6, "com.motorola.vzw.phone.extensions"

    invoke-direct {p0, v6}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->isSystemApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 96
    iget-object v6, p0, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v8}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->finish()V

    .line 98
    return-void

    .line 100
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.motorola.vzw.phone.extensions.AIRPLANE_MODE_ON"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.motorola.vzw.phone.extensions"

    .line 102
    const-string/jumbo v7, "com.motorola.vzw.phone.extensions.AirplaneModeEnabler"

    .line 101
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string/jumbo v6, "launched_from_qs"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v2

    .line 107
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/android/systemui/qs/MotoConfirmationStubActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v6, v8}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_0
.end method
