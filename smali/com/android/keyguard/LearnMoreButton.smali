.class public Lcom/android/keyguard/LearnMoreButton;
.super Landroid/widget/TextView;
.source "LearnMoreButton.java"


# instance fields
.field private mReason:I

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/LearnMoreButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/LearnMoreButton;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 31
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/LearnMoreButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 111
    const v2, 0x7f110381

    const/4 v3, 0x0

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 113
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/keyguard/LearnMoreButton;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 117
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 40
    new-instance v0, Lcom/android/keyguard/LearnMoreButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LearnMoreButton$1;-><init>(Lcom/android/keyguard/LearnMoreButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/LearnMoreButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public setLearnMoreReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/android/keyguard/LearnMoreButton;->mReason:I

    .line 35
    return-void
.end method

.method showLearnMoreInfo()V
    .locals 6

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "messageResId":I
    const/4 v3, 0x0

    .line 50
    .local v3, "titleResId":I
    iget-object v4, p0, Lcom/android/keyguard/LearnMoreButton;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 51
    .local v1, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget v4, p0, Lcom/android/keyguard/LearnMoreButton;->mReason:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 52
    const v3, 0x7f1102a4

    .line 53
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_2

    .line 54
    const v0, 0x7f1102a2

    .line 101
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/keyguard/LearnMoreButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 103
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/LearnMoreButton;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 55
    :cond_2
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_3

    .line 56
    const v0, 0x7f1102a3

    goto :goto_0

    .line 57
    :cond_3
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_0

    .line 58
    const v0, 0x7f1102a1

    goto :goto_0

    .line 60
    :cond_4
    iget v4, p0, Lcom/android/keyguard/LearnMoreButton;->mReason:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 61
    const v3, 0x7f1102a8

    .line 62
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_5

    .line 63
    const v0, 0x7f1102a6

    goto :goto_0

    .line 64
    :cond_5
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_6

    .line 65
    const v0, 0x7f1102a7

    goto :goto_0

    .line 66
    :cond_6
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_0

    .line 67
    const v0, 0x7f1102a5

    goto :goto_0

    .line 69
    :cond_7
    iget v4, p0, Lcom/android/keyguard/LearnMoreButton;->mReason:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_a

    .line 70
    const v3, 0x7f1102a0

    .line 71
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_8

    .line 72
    const v0, 0x7f11029b

    goto :goto_0

    .line 73
    :cond_8
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_9

    .line 74
    const v0, 0x7f11029c

    goto :goto_0

    .line 75
    :cond_9
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_0

    .line 76
    const v0, 0x7f11029a

    goto :goto_0

    .line 79
    :cond_a
    iget v4, p0, Lcom/android/keyguard/LearnMoreButton;->mReason:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_d

    .line 80
    const v3, 0x7f1102a0

    .line 81
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_b

    .line 82
    const v0, 0x7f11029e

    goto :goto_0

    .line 83
    :cond_b
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_c

    .line 84
    const v0, 0x7f11029f

    goto :goto_0

    .line 85
    :cond_c
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_0

    .line 86
    const v0, 0x7f11029d

    goto/16 :goto_0

    .line 88
    :cond_d
    iget v4, p0, Lcom/android/keyguard/LearnMoreButton;->mReason:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 89
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_e

    .line 90
    const v3, 0x7f110299

    .line 91
    const v0, 0x7f110298

    goto/16 :goto_0

    .line 92
    :cond_e
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_f

    .line 93
    const v3, 0x7f110295

    .line 94
    const v0, 0x7f110294

    goto/16 :goto_0

    .line 95
    :cond_f
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v4, :cond_0

    .line 96
    const v3, 0x7f110297

    .line 97
    const v0, 0x7f110296

    goto/16 :goto_0
.end method
