.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    .line 191
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    check-cast p1, [Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "params":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    aget-object v28, p1, v4

    .line 196
    .local v28, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v36

    .line 197
    .local v36, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v36, :cond_0

    .line 198
    const/4 v4, 0x0

    return-object v4

    .line 200
    :cond_0
    new-instance v37, Ljava/util/ArrayList;

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v37, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v31

    .line 202
    .local v31, "currentId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v9

    .line 203
    .local v9, "canSwitchUsers":Z
    const/16 v33, 0x0

    .line 204
    .local v33, "currentUserInfo":Landroid/content/pm/UserInfo;
    const/4 v2, 0x0

    .line 206
    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v33    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .local v35, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 207
    .local v3, "info":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v31

    if-ne v0, v4, :cond_3

    const/4 v6, 0x1

    .line 208
    .local v6, "isCurrent":Z
    :goto_1
    if-eqz v6, :cond_2

    .line 209
    move-object/from16 v33, v3

    .line 211
    :cond_2
    if-nez v9, :cond_4

    move/from16 v17, v6

    .line 212
    :goto_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 216
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v4, 0x0

    .line 217
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 218
    const/4 v8, 0x0

    .line 216
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .local v2, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    goto :goto_0

    .line 207
    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v6    # "isCurrent":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "isCurrent":Z
    goto :goto_1

    .line 211
    :cond_4
    const/16 v17, 0x1

    .local v17, "switchToEnabled":Z
    goto :goto_2

    .line 219
    .end local v17    # "switchToEnabled":Z
    :cond_5
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 221
    .local v12, "picture":Landroid/graphics/Bitmap;
    if-nez v12, :cond_6

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 224
    if-eqz v12, :cond_6

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 226
    const v5, 0x7f0701a3

    .line 225
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 228
    .local v27, "avatarSize":I
    const/4 v4, 0x1

    .line 227
    move/from16 v0, v27

    move/from16 v1, v27

    invoke-static {v12, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 231
    .end local v27    # "avatarSize":I
    :cond_6
    if-eqz v6, :cond_7

    const/16 v34, 0x0

    .line 232
    .local v34, "index":I
    :goto_3
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v13, 0x0

    .line 233
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    move v14, v6

    .line 232
    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 231
    .end local v34    # "index":I
    :cond_7
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v34

    .restart local v34    # "index":I
    goto :goto_3

    .line 239
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    .end local v6    # "isCurrent":Z
    .end local v12    # "picture":Landroid/graphics/Bitmap;
    .end local v34    # "index":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 240
    const-string/jumbo v5, "no_add_user"

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 239
    invoke-virtual {v4, v5, v7}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v38, v4, 0x1

    .line 241
    .local v38, "systemCanCreateUsers":Z
    if-eqz v33, :cond_e

    .line 242
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-nez v4, :cond_9

    .line 243
    move-object/from16 v0, v33

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_e

    .line 244
    :cond_9
    move/from16 v32, v38

    .line 245
    :goto_4
    if-eqz v38, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    move/from16 v26, v0

    .line 246
    :goto_5
    if-nez v32, :cond_a

    if-eqz v26, :cond_11

    .line 247
    :cond_a
    if-nez v2, :cond_10

    const/16 v29, 0x1

    .line 248
    .local v29, "canCreateGuest":Z
    :goto_6
    if-nez v32, :cond_b

    if-eqz v26, :cond_12

    .line 249
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v30

    .line 250
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->val$addUsersWhenLocked:Z

    xor-int/lit8 v24, v4, 0x1

    .line 252
    .local v24, "createIsRestricted":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 253
    if-nez v2, :cond_13

    .line 254
    if-eqz v29, :cond_c

    .line 255
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 256
    const/16 v21, 0x1

    const/16 v22, 0x0

    .line 257
    const/16 v23, 0x0

    move-object/from16 v18, v2

    move/from16 v25, v9

    .line 255
    invoke-direct/range {v18 .. v25}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 258
    .restart local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 259
    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v2    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v30, :cond_d

    .line 268
    new-instance v18, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 269
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move/from16 v25, v9

    .line 268
    invoke-direct/range {v18 .. v25}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 271
    .local v18, "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap0(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 272
    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v18    # "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_d
    return-object v37

    .line 241
    .end local v24    # "createIsRestricted":Z
    .end local v29    # "canCreateGuest":Z
    :cond_e
    const/16 v32, 0x0

    .local v32, "currentUserCanCreateUsers":Z
    goto/16 :goto_4

    .line 245
    .end local v32    # "currentUserCanCreateUsers":Z
    :cond_f
    const/16 v26, 0x0

    .local v26, "anyoneCanCreateUsers":Z
    goto :goto_5

    .line 247
    .end local v26    # "anyoneCanCreateUsers":Z
    :cond_10
    const/16 v29, 0x0

    .restart local v29    # "canCreateGuest":Z
    goto :goto_6

    .line 246
    .end local v29    # "canCreateGuest":Z
    :cond_11
    const/16 v29, 0x0

    .restart local v29    # "canCreateGuest":Z
    goto :goto_6

    .line 248
    :cond_12
    const/16 v30, 0x0

    .local v30, "canCreateUser":Z
    goto :goto_7

    .line 262
    .end local v30    # "canCreateUser":Z
    .restart local v24    # "createIsRestricted":Z
    :cond_13
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eqz v4, :cond_14

    const/16 v34, 0x0

    .line 263
    .restart local v34    # "index":I
    :goto_9
    move-object/from16 v0, v37

    move/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 262
    .end local v34    # "index":I
    :cond_14
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v34

    .restart local v34    # "index":I
    goto :goto_9
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 278
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "userRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    if-eqz p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$7;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 284
    :cond_0
    return-void
.end method
