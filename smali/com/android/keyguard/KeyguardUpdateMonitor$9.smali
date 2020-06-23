.class Lcom/android/keyguard/KeyguardUpdateMonitor$9;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1998
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2002
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string/jumbo v12, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2003
    const-string/jumbo v12, "slot"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2004
    .local v9, "slotId":I
    const-string/jumbo v12, "subscription"

    .line 2005
    const/4 v13, -0x1

    .line 2004
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2007
    .local v11, "subId":I
    const-string/jumbo v12, "plmn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2008
    .local v5, "plmn":Ljava/lang/String;
    const-string/jumbo v12, "showPlmn"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2010
    .local v7, "showPlmn":Z
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get11(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v9, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2011
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "KeyguardUpdateMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Putting PLMN: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "in slot: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_0
    const-string/jumbo v12, "spn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2016
    .local v10, "spn":Ljava/lang/String;
    const-string/jumbo v12, "showSpn"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2017
    .local v8, "showSpn":Z
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseArray;

    move-result-object v13

    if-eqz v8, :cond_4

    move-object v12, v10

    :goto_0
    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2018
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get0()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "KeyguardUpdateMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SPN: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v8, :cond_5

    .end local v10    # "spn":Ljava/lang/String;
    :goto_1
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " subId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :cond_1
    const-string/jumbo v12, "rejectCode"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2022
    .local v6, "rejectCode":I
    const/16 v12, 0x11

    if-ne v6, v12, :cond_7

    .line 2023
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get10(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseArray;

    move-result-object v13

    if-eqz v7, :cond_6

    const-string/jumbo v12, "rejectCode"

    :goto_2
    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2024
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get0()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "KeyguardUpdateMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "REJECTCODE:  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get0()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v13, "KeyguardUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "PLMN: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v7, :cond_9

    move-object v12, v5

    :goto_4
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " subId: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_3
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2033
    return-void

    .line 2017
    .end local v6    # "rejectCode":I
    .restart local v10    # "spn":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2018
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 2023
    .end local v10    # "spn":Ljava/lang/String;
    .restart local v6    # "rejectCode":I
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 2026
    :cond_7
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get10(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseArray;

    move-result-object v13

    if-eqz v7, :cond_8

    move-object v12, v5

    :goto_5
    invoke-virtual {v13, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 2029
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 2036
    :cond_a
    const-string/jumbo v12, "KeyguardUpdateMonitor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Received SPN updates when invalid card exists, intent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get9(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;

    .line 2039
    .local v2, "cardData":Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
    if-eqz v2, :cond_d

    .line 2040
    if-eqz v7, :cond_c

    .end local v5    # "plmn":Ljava/lang/String;
    :goto_6
    iput-object v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->plmn:Ljava/lang/String;

    .line 2042
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_d

    .line 2043
    iget-object v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2044
    .local v3, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v3, :cond_b

    .line 2045
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2042
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 2040
    .end local v3    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v4    # "j":I
    .restart local v5    # "plmn":Ljava/lang/String;
    :cond_c
    const-string/jumbo v5, ""

    goto :goto_6

    .line 2050
    .end local v2    # "cardData":Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
    .end local v5    # "plmn":Ljava/lang/String;
    .end local v6    # "rejectCode":I
    .end local v7    # "showPlmn":Z
    .end local v8    # "showSpn":Z
    .end local v9    # "slotId":I
    .end local v11    # "subId":I
    :cond_d
    return-void
.end method
