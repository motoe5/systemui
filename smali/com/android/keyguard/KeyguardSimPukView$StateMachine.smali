.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    const/4 v1, 0x0

    .line 92
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 97
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p2, "-this1"    # Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap2(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 104
    const v0, 0x7f1102c0

    .line 125
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v2, v2}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(ZZ)V

    .line 126
    if-eqz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    .line 129
    :cond_1
    return-void

    .line 106
    :cond_2
    const v0, 0x7f110292

    goto :goto_0

    .line 108
    :cond_3
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_5

    .line 109
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap1(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 110
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 111
    const v0, 0x7f110282

    goto :goto_0

    .line 113
    :cond_4
    const v0, 0x7f110291

    goto :goto_0

    .line 115
    :cond_5
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 118
    const v0, 0x7f11027e

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap5(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 121
    :cond_6
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 122
    const v0, 0x7f11028f

    goto :goto_0
.end method

.method reset()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 132
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/android/keyguard/KeyguardSimPukView;->-set1(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/android/keyguard/KeyguardSimPukView;->-set2(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iput v11, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 135
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get1(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 138
    .local v4, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 140
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v9, v9, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v9, :cond_0

    .line 141
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v9, v9, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v10

    invoke-interface {v9, v12, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    .line 144
    :cond_0
    return-void

    .line 147
    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/keyguard/KeyguardSimPukView;->-set3(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 148
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 149
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 150
    .local v1, "count":I
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 152
    .local v7, "rez":Landroid/content/res/Resources;
    const/4 v0, -0x1

    .line 153
    .local v0, "color":I
    if-ge v1, v13, :cond_4

    .line 154
    const v9, 0x7f1102c1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 157
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 158
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    :cond_2
    :goto_0
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v9, v9, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v9, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get3(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 199
    .end local v0    # "color":I
    .end local v1    # "count":I
    .end local v5    # "msg":Ljava/lang/String;
    .end local v7    # "rez":Landroid/content/res/Resources;
    :cond_3
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v9, v9, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v9}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 200
    return-void

    .line 162
    .restart local v0    # "color":I
    .restart local v1    # "count":I
    .restart local v7    # "rez":Landroid/content/res/Resources;
    :cond_4
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 163
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 164
    .local v2, "displayName":Ljava/lang/CharSequence;
    :goto_1
    new-array v9, v12, [Ljava/lang/Object;

    aput-object v2, v9, v11

    const v10, 0x7f1102c2

    invoke-virtual {v7, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .restart local v5    # "msg":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 166
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 169
    :cond_5
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getValidSimCount()I

    move-result v9

    if-lt v9, v13, :cond_9

    .line 170
    const v6, 0x7f0803cd

    .line 171
    .local v6, "resId":I
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockedSimCount()I

    move-result v9

    if-lt v9, v13, :cond_6

    .line 172
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v8

    .line 173
    .local v8, "subId":I
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 174
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get6(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 177
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 184
    .end local v8    # "subId":I
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 185
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 163
    .end local v2    # "displayName":Ljava/lang/CharSequence;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "resId":I
    :cond_7
    const-string/jumbo v2, ""

    .restart local v2    # "displayName":Ljava/lang/CharSequence;
    goto :goto_1

    .line 180
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "resId":I
    .restart local v8    # "subId":I
    :cond_8
    const v6, 0x7f0803cc

    goto :goto_2

    .line 189
    .end local v6    # "resId":I
    .end local v8    # "subId":I
    :cond_9
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 190
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 191
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardSimPukView;->-get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0
.end method
