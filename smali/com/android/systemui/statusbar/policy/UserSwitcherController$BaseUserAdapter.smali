.class public abstract Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseUserAdapter"
.end annotation


# instance fields
.field final mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 664
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 665
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 666
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 667
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->addAdapter(Ljava/lang/ref/WeakReference;)V

    .line 668
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    .line 693
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 694
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    .line 693
    if-eqz v4, :cond_0

    .line 695
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    .line 696
    :goto_0
    if-nez v3, :cond_1

    .line 697
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4

    .line 693
    :cond_0
    const/4 v3, 0x0

    .local v3, "secureKeyguardShowing":Z
    goto :goto_0

    .line 700
    .end local v3    # "secureKeyguardShowing":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 701
    .local v0, "N":I
    const/4 v1, 0x0

    .line 702
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 703
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v4, :cond_3

    .line 709
    :cond_2
    return v1

    .line 706
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 742
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v1, :cond_0

    .line 743
    const v1, 0x7f0800be

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 745
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->resolveId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 746
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v1, :cond_1

    .line 747
    const v1, 0x1010030

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    .line 748
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 747
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 750
    :cond_1
    return-object v0
.end method

.method public getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 719
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 727
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v0, :cond_2

    .line 728
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v0, :cond_0

    .line 729
    const v0, 0x7f1101fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 732
    :cond_0
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v0, :cond_1

    const v0, 0x7f110202

    .line 731
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 732
    :cond_1
    const v0, 0x7f110203

    goto :goto_0

    .line 734
    :cond_2
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isAddUser:Z

    if-eqz v0, :cond_3

    .line 735
    const v0, 0x7f11050b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 737
    :cond_3
    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCount()I
    .locals 5

    .prologue
    .line 671
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v4

    .line 671
    if-eqz v4, :cond_0

    .line 673
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    .line 674
    :goto_0
    if-nez v3, :cond_1

    .line 675
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4

    .line 671
    :cond_0
    const/4 v3, 0x0

    .local v3, "secureKeyguardShowing":Z
    goto :goto_0

    .line 678
    .end local v3    # "secureKeyguardShowing":Z
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 679
    .local v0, "N":I
    const/4 v1, 0x0

    .line 680
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 681
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v4, :cond_2

    .line 680
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 682
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUsers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v4, :cond_4

    .line 688
    :cond_3
    return v1

    .line 685
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 755
    return-void
.end method

.method public switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;->mController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchTo(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 724
    return-void
.end method
