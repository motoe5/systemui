.class final Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;
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
    name = "AddUserDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 928
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 929
    const v0, 0x7f11050d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setTitle(I)V

    .line 930
    const v0, 0x7f11050c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 932
    const/high16 v0, 0x1040000

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 931
    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 934
    const v0, 0x104000a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 933
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 935
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 939
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->cancel()V

    .line 959
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->dismiss()V

    .line 943
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 944
    return-void

    .line 946
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 947
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v5, 0x7f110512

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 946
    invoke-virtual {v3, v4, v6}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 948
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_2

    .line 951
    return-void

    .line 953
    :cond_2
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 954
    .local v1, "id":I
    invoke-static {v1, v6}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 956
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 957
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    goto :goto_0
.end method
