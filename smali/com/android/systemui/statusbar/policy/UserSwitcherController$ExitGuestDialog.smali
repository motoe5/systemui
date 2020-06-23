.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserSwitcherController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExitGuestDialog"
.end annotation


# instance fields
.field private final mGuestId:I

.field private final mTargetId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "guestId"    # I
    .param p4, "targetId"    # I

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 901
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 902
    const v0, 0x7f110201

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setTitle(I)V

    .line 903
    const v0, 0x7f1101ff

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 905
    const/high16 v0, 0x1040000

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 904
    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 907
    const v0, 0x7f110200

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->setCanceledOnTouchOutside(Z)V

    .line 909
    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    .line 910
    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mTargetId:I

    .line 911
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 915
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->cancel()V

    .line 921
    :goto_0
    return-void

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->dismiss()V

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mGuestId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$ExitGuestDialog;->mTargetId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->exitGuest(II)V

    goto :goto_0
.end method
