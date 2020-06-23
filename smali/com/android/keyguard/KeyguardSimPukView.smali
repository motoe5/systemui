.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukView$1;,
        Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

.field private mDSSkipButton:Landroid/widget/ImageButton;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/KeyguardSimPukView;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "-value"    # Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "remaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardSimPukView;I)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "attemptsRemaining"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardSimPukView;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->showDialogWithoutBackButton(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardSimPukView;->DEBUG:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 58
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 65
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 90
    return-void
.end method

.method private checkPin()Z
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 408
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 410
    const/4 v1, 0x1

    return v1

    .line 412
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkPuk()Z
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 400
    const/4 v0, 0x1

    return v0

    .line 402
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getPukPasswordErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "attemptsRemaining"    # I

    .prologue
    const/4 v4, 0x0

    .line 212
    if-nez p1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1102ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/keyguard/KeyguardSimPukView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardSimPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    const-string/jumbo v3, " displayMessage="

    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return-object v0

    .line 214
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    if-lez p1, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 216
    const v3, 0x7f0f0001

    .line 215
    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 219
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1102ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    const/4 v3, 0x0

    .line 380
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 383
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 386
    const v2, 0x7f110381

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 388
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 389
    const/16 v3, 0x7d9

    .line 388
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 393
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 368
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    const v2, 0x7f1102c5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 373
    const/16 v1, 0x7d9

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private showDialogWithoutBackButton(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 422
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 423
    return-void
.end method

.method private updateSim()V
    .locals 6

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->showDialogWithoutBackButton(Landroid/app/Dialog;)V

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->start()V

    .line 477
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 240
    const v0, 0x7f0a0214

    return v0
.end method

.method protected getPromtReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 299
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 304
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 305
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 247
    const v0, 0x7f0a0134

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPukView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 292
    :cond_1
    const v0, 0x7f0a0149

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    .line 293
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 316
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 318
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 230
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 482
    return-void
.end method
