.class public final Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SafeModeRebootActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private rebootPhoneToNormal()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 49
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 38
    packed-switch p2, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    return-void

    .line 40
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->rebootPhoneToNormal()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 27
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f110445

    invoke-virtual {p0, v1}, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 28
    const v1, 0x7f110443

    invoke-virtual {p0, v1}, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 29
    const v1, 0x7f110444

    invoke-virtual {p0, v1}, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 30
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 31
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 33
    invoke-virtual {p0}, Lcom/motorola/android/systemui/safemode/SafeModeRebootActivity;->setupAlert()V

    .line 34
    return-void
.end method
